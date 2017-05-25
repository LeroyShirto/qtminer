FROM ubuntu:14.04

ENV ADDRESS=value

RUN apt-get update && apt-get install -y wget

RUN \
    wget http://ethpool.org/downloads/qtminer2.tgz && \
    tar -xvf qtminer2.tgz

ADD run.sh /

ENTRYPOINT run.sh
