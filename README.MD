# Plumber API on Railway (Free Tier)

R + [plumber](https://www.rplumber.io/) API, контейнеризований Docker'ом і готовий до деплою на [Railway](https://railway.app).

## ✨ Ендпоінти

- `/health` – перевірка стану
- `/mean?n=100&mu=10&sd=3` – приклад обчислення в R
- `/boxplot` – повертає PNG-графік

## 🚀 One-click Deploy

> Кнопка нижче працює, якщо цей репозиторій **публічний** в GitHub.
>
> Якщо Railway змінить URL-шаблон, можна задеплоїти через “New Project → Deploy from GitHub repo”.

[![Deploy on Railway](https://railway.app/button.svg)](https://railway.app/new/template?template=<PUT-YOUR-REPO-URL-HERE>)

> 🔁 Замініть `<PUT-YOUR-REPO-URL-HERE>` на HTTPS-URL **вашого** GitHub-репозиторію, наприклад:
> `https://railway.app/new/template?template=https://github.com/yourname/plumber-railway`

## 🧭 Альтернативний деплой через CLI

1. Встановіть Railway CLI:
   ```bash
   npm i -g @railway/cli
