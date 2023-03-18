FROM node:18

COPY package.json /
COPY package-lock.json /
COPY index.js /

RUN npm install

RUN chmod +x /index.js

CMD [ "/index.js" ]