FROM debian:10.1
MAINTAINER djnos14@hotmail.com
RUN apt-get update && \
    apt-get install -y openntpd && \
    rm -rf /var/lib/apt/lists/*

ENTRYPOINT ["/usr/sbin/ntpd"]
CMD ["-?"]
