FROM node:18-alpine as node

USER node

RUN mkdir -p /home/node/react
WORKDIR /home/node/react

COPY --chown=node:node package.json .
RUN npm install

COPY --chown=node:node . .
RUN npm run build

FROM nginx

COPY --chown=node:node --from=node /home/node/react/build /usr/share/nginx/html