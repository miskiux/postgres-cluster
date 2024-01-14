ARG ETCD_ROOT=/etc/confd/
ARG ETCD_VERSION="3.4.9"

FROM ubuntu:latest

RUN apt-get update -y \
    # Download etcd
    && curl -sL "https://github.com/coreos/etcd/releases/download/v$ETCD_VERSION/etcd-v$ETCD_VERSION-linux-$(dpkg --print-architecture).tar.gz" \
    | tar xz -C /usr/local/bin --strip=1 --wildcards --no-anchored etcd etcdctl \