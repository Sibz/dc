FROM debian:latest

WORKDIR /app

#COPY run_mm.sh /run_mm.sh
#CMD /run_mm.sh

RUN apt-get update && apt-get install -y \
    openssl 

# RUN apk add openssl && apk add libc6-compat

#ENTRYPOINT [ "/bin/bash", "-l", "-c" ]

CMD [ "./magnitudo_machina" ]
