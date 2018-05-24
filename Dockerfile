FROM centos:7

RUN yum install -y epel-release; \
    yum install -y htop ncdu wget telnet

ADD https://github.com/just-containers/s6-overlay/releases/download/v1.18.1.5/s6-overlay-amd64.tar.gz /tmp/s6-overlay.tar.gz
RUN tar xvfz /tmp/s6-overlay.tar.gz -C /



ENTRYPOINT /init
