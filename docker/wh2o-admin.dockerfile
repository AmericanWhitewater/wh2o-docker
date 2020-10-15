FROM node:12.18.3-slim

COPY ./wh2o-admin/ /var/www

WORKDIR /var/www

RUN npm install

EXPOSE 8080

ENTRYPOINT ["npm", "run", "serve"]