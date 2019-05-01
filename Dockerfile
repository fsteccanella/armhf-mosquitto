FROM balenalib/armv7hf-alpine:latest

RUN [ "cross-build-start" ]

RUN apk --no-cache add mosquitto mosquitto-clients

RUN [ "cross-build-end" ]

EXPOSE 1883

ENV PATH /usr/sbin:$PATH
ENTRYPOINT ["/usr/sbin/mosquitto"]
