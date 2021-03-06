FROM node:13.10-alpine

WORKDIR /app

RUN npm install nodemon -g

COPY package*.json ./
RUN npm install

EXPOSE 3000
CMD ["nodemon", "app.js"]
