FROM node AS build
WORKDIR /app
COPY . .
RUN yarn install
RUN yarn build

FROM node AS modules
WORKDIR /app
COPY package*.json ./
RUN yarn install --production

FROM node
WORKDIR /app
COPY --from=build /app/dist ./
COPY --from=modules /app/node_modules ./
EXPOSE 3000
ENTRYPOINT [ "node", "dist/index.js" ]
