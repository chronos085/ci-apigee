FROM node:7-alpine

RUN npm install -g openapi2apigee
RUN npm install -g apigeelint
RUN npm install -g apigeetool
RUN npm install -g apigee2swagger
