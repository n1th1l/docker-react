FROM node:lts-alpine as builder

WORKDIR /usr/dev-app

COPY ./package.json ./
RUN npm install

COPY ./ ./

RUN npm run build

FROM nginx
COPY --from=builder /usr/dev-app/build /usr/share/nginx/html
