FROM ubuntu
EXPOSE 80
WORKDIR /app
USER root

COPY entrypoint.sh ./

RUN apt-get update && apt-get install -y wget curl unzip iproute2 systemctl

ENTRYPOINT [ "sh -x ", "entrypoint.sh" ]
