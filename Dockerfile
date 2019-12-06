FROM node:8-alpine

RUN mkdir -p /home/node/app && chown -R node:node /home/node/app
WORKDIR /home/node/app

USER node

RUN npm install -g openapi2apigee
RUN npm install -g apigeelint
RUN npm install -g apigeetool
RUN npm install -g apigee2swagger
