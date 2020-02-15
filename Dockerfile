FROM alpine
LABEL maintainer "ricardomarcelo@hotmail.com"
RUN apk update && \
    apk add curl
ENV URL https://www.facebook.com
ENV ruta /data
RUN mkdir $ruta
WORKDIR $ruta
VOLUME $ruta
CMD curl -I $URL > $ruta/resultado.txt


