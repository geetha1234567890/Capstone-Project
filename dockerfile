FROM node:16.20.0-alpine

ENV NODE_ENV=master

WORKDIR /code

COPY package.json .

RUN npm install

EXPOSE 8080

COPY . .

CMD ["npm","start"]
