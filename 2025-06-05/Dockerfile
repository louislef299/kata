FROM node:22-alpine

RUN corepack enable

# Set working directory
WORKDIR /app

COPY package.json yarn.lock ./
COPY .yarn ./.yarn
COPY tsconfig.json .pnp.cjs .pnp.loader.mjs ./

RUN yarn install --immutable
COPY app.ts ./

RUN yarn build
CMD ["node", ".pnp.cjs", "app.js"]
