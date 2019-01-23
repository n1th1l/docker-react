FROM node:lts-alpine as builder

WORKDIR /usr/dev-app

COPY ./package.json ./
RUN npm install

COPY ./ ./

RUN npm run build

FROM nginx
EXPOSE 80

COPY --from=builder /usr/dev-app/build /usr/share/nginx/html
