# Stage 1: Build Angular app
FROM node:16 as build

WORKDIR /app
COPY ./ /app
RUN npm install
RUN npm run build --prod

# Stage 2: NGINX to serve Angular
FROM nginx:alpine
COPY --from=build /app/dist/frontend /usr/share/nginx/html
EXPOSE 80
