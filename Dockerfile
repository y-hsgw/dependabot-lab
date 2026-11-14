FROM node:24.22.2

WORKDIR /app

COPY package*.json tsconfig.json ./

RUN npm ci

COPY src ./src

CMD ["npm", "start"]
