FROM alpine

RUN apk update && apk upgrade && apk add tinyproxy

COPY docker-entrypoint.sh /

EXPOSE 8000

ENTRYPOINT ["/docker-entrypoint.sh"]

CMD ["tinyproxy", "-d"]
