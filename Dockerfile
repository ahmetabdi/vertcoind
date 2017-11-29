FROM debian:stable-slim
LABEL maintainer="Ahmet Abdi <ahmetabdi@gmail.com>"

ENV VERSION v0.11.1.0

RUN apt-get update && \
    apt-get install -y --no-install-recommends curl ca-certificates unzip && \
    curl -L https://github.com/vertcoin/vertcoin/releases/download/$VERSION/vertcoin-$VERSION-linux-64bit.zip --output /tmp/prebuilt.zip && \
    unzip /tmp/prebuilt.zip -d /tmp && \
    mv /tmp/vertcoind /usr/local/bin && \
    apt-get purge -y curl ca-certificates unzip && \
    apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

VOLUME ["/data"]
ENV HOME /data
ENV DATA /data
WORKDIR /data

EXPOSE 5888 5889
