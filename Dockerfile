FROM node:12-slim as base

RUN mkdir -p /app && chown -R node:node /app

USER node

WORKDIR /app
COPY --chown=node:node client.js ./
RUN yarn install && yarn cache clean --force

CMD ["node", "client"]

