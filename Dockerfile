FROM ubuntu:18.04
RUN apt update && apt install -y build-essential ca-certificates
WORKDIR /app

COPY kafka_exporter /bin/kafka_exporter

EXPOSE     9308
ENTRYPOINT [ "/bin/kafka_exporter" ]