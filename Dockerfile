#FROM node:19-alpine
FROM ghcr.io/puppeteer/puppeteer:19.7.5


COPY package.json /
COPY package-lock.json /
COPY index.js /

RUN npm ci
#RUN npm install -g puppeteer --unsafe-perm=true --allow-root

#RUN chmod a+x /index.js

CMD ["node", "/index.js"]
