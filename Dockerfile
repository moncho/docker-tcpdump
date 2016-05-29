FROM alpine:3.3

ENV TCPDUMP_VERSION 4.7.4-r0

RUN apk add --update \
      tcpdump==${TCPDUMP_VERSION} \
      && rm -rf /var/cache/apk/*

VOLUME ["/pcap"]
WORKDIR /pcap

ENTRYPOINT ["/usr/sbin/tcpdump"]
CMD ["-G 900 -w '%Y-%m-%d_%H:%M:%S.pcap' -W 96"]
