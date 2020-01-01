FROM node:10

WORKDIR /user/src/app

ADD package*.json ./

RUN npm install

COPY . .

EXPOSE 8080

CMD ["node", "server.js"]