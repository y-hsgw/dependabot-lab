FROM node:24.10.0

WORKDIR /app

COPY package*.json tsconfig.json ./

RUN npm ci

COPY src ./src

CMD ["npm", "start"]
