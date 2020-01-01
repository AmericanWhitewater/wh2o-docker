FROM node:10

WORKDIR /user/src/app

COPY ./wh2o-web/package*.json ./

RUN npm install

COPY ./wh2o-web/ ./

EXPOSE 8080

CMD ["npm","run","serve"]