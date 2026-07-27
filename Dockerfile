# Используем официальный образ nginx
FROM nginx:alpine

# Копируем HTML-файл в директорию по умолчанию nginx
COPY index.html /usr/share/nginx/html/index.html

# Открываем порт 80
EXPOSE 80

# Запускаем nginx в foreground-режиме
CMD ["nginx", "-g", "daemon off;"]
