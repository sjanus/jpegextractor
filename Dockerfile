FROM alpine

RUN apk update \
 && apk add exiftool \
 && rm -rf /var/cache/apk

COPY jpegextractor.sh /bin

CMD echo 'Mount volume to container path and run "jpegextractor.sh <path>" within container'
