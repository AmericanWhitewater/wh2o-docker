FROM node:12

COPY ./nwi-data-tool/ /var/www
WORKDIR /var/www

RUN npm install

EXPOSE 4000

ENTRYPOINT ["npm", "start"]