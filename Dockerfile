FROM node:23.2-alpine

WORKDIR /app

COPY package.json pnpm-lock.yaml ./

RUN npm install -g pnpm
RUN pnpm install 

COPY . .

RUN pnpm run build

CMD ["pnpm", "run", "start:dev"]