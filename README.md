# wh2o-docker

### System Requirements

-[Docker Desktop](https://www.docker.com/products/docker-desktop)

```
mkdir wh2o

cd wh2o

git clone --recurse-submodules -j8 git://github.com/AmericanWhitewater/wh2o-docker.git

cd wh2o-docker
```

Build containers/images
```
docker-compose build --no-cache
```

```
docker-compose up
```