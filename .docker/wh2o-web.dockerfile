FROM node:12

LABEL author="Drew Althage"

ENV NODE_ENV=development 
ENV PORT=8080

COPY ./wh2o-web/ /var/www
WORKDIR /var/www

RUN npm install

EXPOSE $PORT

ENTRYPOINT ["npm", "run", "serve"]