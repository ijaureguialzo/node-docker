ARG NODE_VERSION=lts

FROM node:${NODE_VERSION}-bookworm

ENV DEBIAN_FRONTEND noninteractive

RUN apt update && apt install -y \
    bash \
    nano

WORKDIR /proyectos

USER node
