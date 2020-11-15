FROM node:12.18.3-slim

COPY ./wh2o-vue/ /var/www

WORKDIR /var/www

RUN npm install

EXPOSE 8080

CMD ["npm", "run", "serve"]