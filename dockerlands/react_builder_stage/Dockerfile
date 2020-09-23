FROM node as builder
WORKDIR /app
RUN npm install -g create-react-app
RUN npm init react-app my-app --use-npm
WORKDIR /app/my-app
RUN npm run build

# production environment
FROM nginx:stable-alpine
COPY --from=builder /app/my-app/build /usr/share/nginx/html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]