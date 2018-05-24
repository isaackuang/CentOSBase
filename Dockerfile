FROM centos:7

RUN yum update; \
    yum install -y epel-release; \
    yum install -y htop ncdu wget telnet

RUN cd /tmp && wget https://github.com/just-containers/s6-overlay/releases/download/v1.21.4.0/s6-overlay-amd64.tar.gz && \
    tar zxvf s6-overlay-amd64.tar.gz -C / --exclude="./bin" && \
    tar zxvf s6-overlay-amd64.tar.gz -C /usr ./bin && \
    rm /tmp/s6-overlay-amd64.tar.gz

ENTRYPOINT /init
