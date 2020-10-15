FROM node:12.18.3-slim

COPY ./wh2o-api/ /var/www
COPY ./scripts/wait-for-postgres.sh /var/www

WORKDIR /var/www

EXPOSE 3000

RUN chown -R node:node /var/www
USER node

RUN npm ci && npm run build


# CMD [,"node", "dist/index.js" ]