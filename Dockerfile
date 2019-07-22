FROM node:12

WORKDIR /usr/src/app

RUN npm install -g pm2

COPY . .

EXPOSE 3000

CMD ["pm2-runtime", "app.js", "-i", "max"]

