FROM node:14-alpine

WORKDIR /app1

COPY ./package*.json /app1/

RUN yarn install 

COPY . .

EXPOSE 3000

RUN npm build

CMD [ "npm", "start" ]
