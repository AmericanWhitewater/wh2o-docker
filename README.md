# DEPRECATED

This repository has been deprecated and is no longer in use. It is kept around for prosterity.

See the durrent docker repo at: https://github.com/AmericanWhitewater/docker

# wh2o-docker
### System Requirements

- [`Docker Desktop - Mac`](https://www.docker.com/products/docker-desktop)
- [`Docker CE - PC`](https://www.docker.com/)

```
mkdir wh2o

cd wh2o

git clone --recurse-submodules -j8 git://github.com/AmericanWhitewater/wh2o-docker.git

cd wh2o-docker
```

Build containers/images
```
docker-compose build
```

Install `node_modules` for `wh2o-vue` and `wh2o-api`. This is not ideal. 

```
docker-compose up -d
```

If you get a sass-loader error about os bindings, stop the container, and run `npm ci` 

When the database and Node.js API containers are ready, cd into `wh2o-api` and run:

```
npm run db:migrate && npm run db:seed:all
```

**Note:** migrations and seeders are not up to date with the latest prod database structure. For the most up to date db, restore from backup. See [`wh2o wiki - docker dev mac`](https://github.com/AmericanWhitewater/wh2o/wiki/Docker-Project-Dev-(Mac-setup)#2---pgdump). 

Vue app will be available with hot reloading at http://localhost:8080/