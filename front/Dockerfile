FROM node:16.20 as builder

RUN mkdir /app \
    && npm i -g @angular/cli@10.1.7

ADD . /app

WORKDIR /app
RUN npm run build

# Run the app
FROM nginx as prod

# ADD nginx.conf /etc/nginx/

# ADD admin.conf /etc/nginx/conf.d/
# ADD pad.conf /etc/nginx/conf.d/
ADD front.conf /etc/nginx/conf.d/

RUN rm -rf /etc/nginx/conf.d/default.conf

COPY --from=builder /app/dist/tlcfront /usr/share/nginx/html
