FROM alpine:edge

RUN apk --no-cache add \
    --repository http://dl-3.alpinelinux.org/alpine/edge/testing/ \
    py2-pip \
    py-m2crypto \
    py-graphviz \
    py-dnspython \
    && pip install dnsviz

COPY entrypoint.sh /entrypoint.sh

USER nobody:nobody

ENTRYPOINT ["/entrypoint.sh"]
