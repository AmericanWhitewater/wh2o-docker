FROM node:10

WORKDIR /user/src/app

COPY ./wh2o-api/package*.json ./

RUN npm install

COPY ./wh2o-api/ ./

EXPOSE 3030

CMD ["node", "server.js"]