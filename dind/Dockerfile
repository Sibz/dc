FROM docker:26.1.3-dind-alpine3.20

COPY build_mm_image.sh /build_mm_image.sh
COPY mm_df /Dockerfile

RUN apk update && apk add --no-cache \
    unzip \    
    sudo

RUN apk add aws-cli --repository=http://dl-cdn.alpinelinux.org/alpine/edge/community/

COPY build_mm_image.sh /build_mm_image.sh

RUN chmod +x /build_mm_image.sh

CMD /build_mm_image.sh