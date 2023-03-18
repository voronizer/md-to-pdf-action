FROM node:19-alpine

COPY package.json /
COPY package-lock.json /
COPY index.js /

RUN npm ci
RUN node node_modules/puppeteer/install.js

RUN chmod a+x index.js

CMD ["node", "/index.js"]
