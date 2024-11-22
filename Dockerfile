FROM node:18

RUN npm install -g npm@9

WORKDIR /app

RUN npm install express

COPY . .

EXPOSE 81

CMD ["node","index.js"]

