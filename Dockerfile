FROM ubuntu:20.04

RUN mkdir -p /var/scripts/ && \
    apt-get update && \
    apt-get install -y iputils-ping && \
    mkdir -p /dev/ && touch /dev/log
COPY ./ping.sh /var/scripts/ping.sh

ENTRYPOINT ["/var/scripts/ping.sh"]