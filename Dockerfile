FROM alpine:latest

RUN apk add --no-cache bash coreutils

WORKDIR /home/app

COPY ./src ./src
COPY ./config.conf .

RUN chmod +x ./src/*.sh

CMD ["./src/analyzer.sh"]
