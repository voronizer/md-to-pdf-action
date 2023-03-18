FROM node:19-alpine

COPY package.json /
COPY package-lock.json /
COPY index.js /

RUN npm ci

RUN chmod a+x index.js

CMD ["node", "/index.js"]
