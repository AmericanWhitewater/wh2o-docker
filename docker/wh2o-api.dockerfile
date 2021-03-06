FROM node:12.18.3-slim

COPY ./wh2o-api/ /var/www

WORKDIR /var/www

EXPOSE 3000

# RUN chown -R node:node /var/www
# USER node

RUN npm ci --quiet && npm run build

RUN rm -rf docs/

RUN npm ci --production --quiet

RUN npm cache clean --force

CMD ["node", "dist/index.js" ]