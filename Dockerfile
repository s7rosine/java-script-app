FROM node:20-alpine

WORKDIR /usr/app

COPY package*.json ./
RUN npm install --production

COPY . .

RUN mkdir -p /usr/app/data
VOLUME ["/usr/app/data"]

EXPOSE 3000

CMD ["npm", "start"]
