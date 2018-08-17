FROM resin/raspberrypi3-debian
RUN [ "cross-build-start" ]


RUN apt-get update && \
apt-get install -yqq --no-install-recommends squid3  && rm -rf /var/lib/apt/lists/*







RUN [ "cross-build-end" ]  



ENTRYPOINT ["/usr/sbin/squid3","-NYCd","1"]

