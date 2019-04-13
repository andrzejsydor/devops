FROM node:10

WORKDIR /app

COPY package.json /app
RUN npm install
COPY . /app

ENTRYPOINT [ "node" ]
CMD [ "index.js" ]

EXPOSE 3000
