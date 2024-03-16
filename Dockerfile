# Use the node image with the specified version
FROM node:16

# Папка приложения
# ARG APP_DIR=app
# RUN mkdir -p ${APP_DIR}
# WORKDIR ${APP_DIR}
WORKDIR /

# Установка зависимостей
COPY package.json .
RUN npm install --production
# Для использования в продакшне
# RUN npm install --production

# Копирование файлов проекта
COPY . .

# Уведомление о порте, который будет прослушивать работающее приложение
EXPOSE 8000

# Запуск проекта
CMD ["node", "index.mjs"]
