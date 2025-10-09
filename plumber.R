# plumber.R
library(plumber)
library(ggplot2)

#* Health check
#* @get /health
function() {
  list(status = "ok", time = as.character(Sys.time()))
}

#* Mean of random normals
#* @param n:int=10
#* @param mu:double=0
#* @param sd:double=1
#* @get /mean
function(n = 10, mu = 0, sd = 1) {
  x <- rnorm(n, mean = mu, sd = sd)
  list(
    n = as.integer(n),
    mu = as.numeric(mu),
    sd = as.numeric(sd),
    mean = mean(x),
    sd_sample = sd(x)
  )
}

#* Boxplot (PNG)
#* @png
#* @get /boxplot
function() {
  df <- data.frame(
    group = rep(LETTERS[1:3], each = 50),
    value = c(rnorm(50,10,2), rnorm(50,15,3), rnorm(50,20,4))
  )
  p <- ggplot(df, aes(group, value)) +
    geom_boxplot() +
    ggtitle("Boxplot from Plumber API (Railway)")
  print(p)
}

# Railway надає порт через env var PORT
pr() |>
  pr_run(host = "0.0.0.0", port = as.integer(Sys.getenv("PORT", "8000")))
