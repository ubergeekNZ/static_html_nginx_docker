FROM nginx:alpine

ARG ENV_GROUP
ENV ENV_GROUP=$ENV_GROUP

WORKDIR /usr/src/app
COPY . $WORKDIR
RUN apk add openrc

WORKDIR /usr/src/app

RUN chmod +x scripts/init.sh

EXPOSE 80

CMD sh ./scripts/init.sh ; rc-service nginx reload ;nginx -g "daemon off;"
