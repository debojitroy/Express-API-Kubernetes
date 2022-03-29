FROM node:16-alpine

WORKDIR /express-app

COPY . .

RUN npm install

EXPOSE 8080

ENTRYPOINT ["node", "app.js"]
