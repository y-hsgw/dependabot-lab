FROM node:24.13.1

WORKDIR /app

COPY package*.json tsconfig.json ./

RUN npm ci

COPY src ./src

CMD ["npm", "start"]
