# Docker file used to generate the container for Gitlab CI
#
# You have to execute the following commands :
# - docker login registry.gitlab.com
# - docker build -t registry.gitlab.com/short-circuit-group/short-circuit-client/ionic -f Dockerfile-ionic .
# - docker push registry.gitlab.com/short-circuit-group/short-circuit-client/ionic

FROM node:lts-slim

RUN yarn global add @ionic/cli capacitor @angular-devkit/build-angular --dev && \
    npm link @angular/cli && \
    ng config -g cli.packageManager yarn
