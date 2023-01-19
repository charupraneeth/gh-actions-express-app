FROM node:16-alpine
WORKDIR /app
COPY . ./

RUN npm install
RUN npm install pm2 -g

EXPOSE 1337

CMD [ "pm2-runtime","index.js" ]
