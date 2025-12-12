# plumber.R
library(plumber)

#* Health check
#* @get /health
function() {
  list(status = "ok")
}

#* Add two numbers
#* @param a:int
#* @param b:int
#* @get /add
function(a, b) {
  as.numeric(a) + as.numeric(b)
}

# Запуск API (Railway/Render/Fly.io читають PORT з env; локально ставимо 8000)
pr() |>
  pr_run(host = "0.0.0.0", port = as.integer(Sys.getenv("PORT", "8000")))

