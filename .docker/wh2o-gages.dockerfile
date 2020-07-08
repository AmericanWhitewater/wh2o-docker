FROM node:12

COPY ./wh2o-gages/ /var/www
WORKDIR /var/www

RUN npm install

EXPOSE 5000

ENTRYPOINT ["npm", "start"]