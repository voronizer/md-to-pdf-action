FROM node:18

ENV INPUT_INPUT_FILE = ""
ENV INPUT_OUTPUT_FILE = ""

RUN echo "INPUT_INPUT_FILE = $INPUT_INPUT_FILE"
RUN echo "INPUT_OUTPUT_FILE = $INPUT_OUTPUT_FILE"


COPY package.json /
COPY package-lock.json /
COPY index.js /

RUN npm install

RUN chmod +x /index.js

CMD [ "/index.js" ]