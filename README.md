# wh2o-docker

### System Requirements

-[Docker Desktop](https://www.docker.com/products/docker-desktop)

```
mkdir wh2o

cd wh2o && git clone https://github.com/AmericanWhitewater/wh2o-docker.git

cd wh2o-docker

git submodule update --init --recursive --remote

```

Build containers/images
```
docker-compose build --no-cache
```

```
docker-compose up
```