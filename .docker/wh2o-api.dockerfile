FROM node:12

COPY ./wh2o-api/ /var/www
WORKDIR /var/www

RUN npm install

EXPOSE 5000

ENTRYPOINT ["npm", "start"]