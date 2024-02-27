FROM node:16.20 as builder

RUN mkdir /app \
    && npm i -g @angular/cli@10.1.7

ADD . /app

WORKDIR /app
RUN npm i \
    && npm run build

# Run the app
FROM nginx as prod

RUN rm -rf /etc/nginx/conf.d/default.conf

COPY --from=builder /app/dist/tlcfront /usr/share/nginx/html
