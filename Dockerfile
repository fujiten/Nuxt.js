FROM node:14.6

RUN apt-get update -y && \
    apt-get upgrade -y && \  
    npm install -g @vue/cli

RUN mkdir /nuxt_practice
RUN chown -R node:node /nuxt_practice
USER node
WORKDIR /nuxt_practice
ADD . /nuxt_practice
