FROM alpine
LABEL maintainer "ricardomarcelo@hotmail.com"
RUN apk update && \
        apk add curl
ENV URL http://www.google.com
ENV RUTA /data
RUN mkdir $RUTA
WORKDIR $RUTA
VOLUME $RUTA
CMD curl -I $URL > $RUTA/resultado.txt

