# ionic-build

This repository contains a Docker image that can be used in a Gitlab CI stage to build an Ionic application.

The Image is present on Docker Hub : [https://hub.docker.com/r/fabar/ionic-build](https://hub.docker.com/r/fabar/ionic-build)

## How to use in Gitlab CI

You can just a stage in your `.gitlab-ci.yml` file as follow:

```
build:
  image: fabar/ionic-build
  stage: build
  script:
    - npm ci
    - ionic build --no-interactive --confirm
  artifacts:
    paths:
      - www
```
