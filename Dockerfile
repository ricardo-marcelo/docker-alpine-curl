FROM alpine
LABEL maintainer "ricardomarcelo@hotmail.com"
RUN apk update && \
    apk add curl
ENV URL http://www.google.com
ENV ruta /data
RUN mkdir $ruta
WORKDIR $ruta
VOLUME $ruta
CMD curl -I $URL > $ruta/resultado.txt


