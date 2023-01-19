FROM node:16-alpine
WORKDIR /app
COPY . ./

RUN npm install

EXPOSE 1337

CMD [ "node","index.js" ]
