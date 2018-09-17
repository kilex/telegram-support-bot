FROM node:9-alpine

RUN yarn install
RUN npm i npm@latest -g
RUN npm install telegraf 
RUN npm install cron

WORKDIR /app
COPY . .
CMD node /app/bin/support.js
