FROM node:19-alpine

WORKDIR /src

COPY package.json package.json
COPY package-lock.json package-lock.json
COPY index.js index.js

RUN npm install

RUN chmod a+x index.js

CMD [ "index.js" ]