FROM resin/raspberrypi3-debian
RUN [ "cross-build-start" ]


RUN apt-get update && \
apt-get install -yqq --no-install-recommends squid3  && rm -rf /var/lib/apt/lists/*





COPY  squid /etc/squid3

RUN [ "cross-build-end" ]  
EXPOSE 3128


ENTRYPOINT ["/usr/sbin/squid3","-NYCd","1"]

