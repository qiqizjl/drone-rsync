FROM registry.kanongyun.com/library/alpine:3.13

RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.aliyun.com/g' /etc/apk/repositories

RUN apk add --no-cache --update ca-certificates bash openssh-client rsync
ADD upload.sh /usr/local/

CMD ["/usr/local/upload.sh"]
