FROM node

WORKDIR /app

RUN npm install -g create-react-app

RUN npm init react-app my-app --use-npm

WORKDIR /app/my-app

EXPOSE 3000

CMD ["npm", "start"]