install.packages("corrplot")
library(corrplot)

# Дані
data <- data.frame(
  var1 = c(1, 3, 3, 4, 5),
  var2 = c(2, 4, 6, 8, 10),
  var3 = c(5, 7, 6, 8, 7)
)

# Обчислення кореляційної матриці
cor_matrix <- cor(data)

# Виведення кореляційної матриці
print(cor_matrix)


# Побудова кореляційної матриці
corrplot(cor_matrix, method = "shade")

