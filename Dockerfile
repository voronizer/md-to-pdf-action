FROM node:18

COPY package.json /
COPY package-lock.json /
COPY index.js /

RUN npm ci

RUN chmod +x /index.js

CMD ["node", "/index.js"]