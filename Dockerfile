FROM node:18

ENV INPUT_INPUT-FILE = ""
ENV INPUT_OUTPUT-FILE = ""

RUN echo "INPUT_INPUT-FILE = $INPUT_INPUT-FILE"
RUN echo "INPUT_OUTPUT-FILE = $INPUT_OUTPUT-FILE"


COPY package.json /
COPY package-lock.json /
COPY index.js /

RUN npm install

RUN chmod +x /index.js

CMD [ "/index.js" ]