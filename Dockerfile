ARG NODE_VERSION
FROM node:${NODE_VERSION}-alpine

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . .

ARG APORT
EXPOSE ${PORT}

CMD ["npm", "run", "start"]