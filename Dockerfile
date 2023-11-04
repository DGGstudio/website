FROM docker.io/node:lts-alpine
# FROM docker.IO/denoland/deno:alpine
# FROM docker.io/oven/bun:latest

ARG arch=amd64


WORKDIR /home

COPY build/ .

RUN npm i -g pnpm; pnpm i -P --frozen-lockfile;

EXPOSE 3000

CMD	["node", "index.js"]
