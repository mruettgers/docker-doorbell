FROM mruettgers/rpi-pulseaudio
MAINTAINER Michael Ruettgers <michael@ruettgers.eu>

ENV DOORBELL_SOUND=/doorbell/sounds/doorsound-2.wav

RUN set -xe \
  && apk -U --no-cache add mini_httpd haserl

RUN addgroup nobody pulse-access

COPY files/ /

ENTRYPOINT ["/docker/docker-entrypoint.sh"]