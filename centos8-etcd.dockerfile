FROM centos:8.1.1911

LABEL __copyright__="(C) Guido Draheim, licensed under the EUPL" \
      __version__="1.5.8065"

ENV ETCDVERSION=3.3.13

COPY files/docker/systemctl3.py /usr/bin/systemctl3.py
RUN sed -i -e "s|/usr/bin/python3|/usr/libexec/platform-python|" /usr/bin/systemctl3.py

RUN cp /usr/bin/systemctl3.py /usr/bin/systemctl
COPY files/docker/systemctl3.py /usr/bin/systemctl
RUN cp /usr/bin/systemctl3.py /usr/bin/systemctl

RUN curl -sL "https://storage.googleapis.com/etcd/v${ETCDVERSION}/etcd-v${ETCDVERSION}-linux-amd64.tar.gz" \
      | tar xz -C /usr/local/bin --strip=1 --wildcards --no-anchored etcd etcdctl

CMD /usr/bin/systemctl
