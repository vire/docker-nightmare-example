FROM node:6

MAINTAINER Viliam Elischer <code.vire@gmail.com>

RUN apt-get update &&\
    apt-get install -y libgtk2.0-0 libgconf-2-4 \
    libnotify4 libasound2 libxtst6 libxss1 libnss3 xvfb
RUN npm install -g yarn

RUN mkdir /tmp/app
WORKDIR /tmp/app

COPY package.json ./
COPY yarn.lock ./
RUN yarn install

COPY . .
ENTRYPOINT xvfb-run --server-args="-screen 9 1280x2000x24" npm test