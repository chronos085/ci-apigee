FROM node:7-alpine

RUN npm install openapi2apigee
RUN npm install apigeelint
RUN npm install apigeetool
RUN npm install apigee2swagger
