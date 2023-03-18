#FROM node:19-alpine
FROM ghcr.io/puppeteer/puppeteer:latest

WORKDIR /home/pptruser

COPY package.json /home/pptruser/
COPY package-lock.json /home/pptruser/
COPY index.js /home/pptruser/

RUN npm ci
#RUN npm install -g puppeteer --unsafe-perm=true --allow-root

#RUN chmod a+x /index.js

CMD ["node", "/home/pptruser/index.js"]
