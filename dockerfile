# Базовий образ з R
FROM rocker/r-ver:4.4.1

# Системні залежності для популярних R-пакетів
RUN apt-get update && apt-get install -y \
    libssl-dev libcurl4-openssl-dev libxml2-dev \
 && rm -rf /var/lib/apt/lists/*

# Робоча директорія
WORKDIR /app

# Копіюємо код API
COPY plumber.R /app/plumber.R

# Ставимо пакети R (додавайте свої за потреби)
RUN R -e "install.packages(c('plumber','ggplot2'), repos='https://cloud.r-project.org')"

# Запуск API (Railway підставить $PORT)
CMD ["Rscript", "plumber.R"]
