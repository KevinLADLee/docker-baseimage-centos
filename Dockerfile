FROM centos:7

ARG S6_VERSION="2.0.0.1"

ADD https://github.com/just-containers/s6-overlay/releases/download/v2.0.0.1/s6-overlay-amd64.tar.gz /tmp/

RUN tar xzf /tmp/s6-overlay-amd64.tar.gz -C / --exclude="./bin" && \
    tar xzf /tmp/s6-overlay-amd64.tar.gz -C /usr ./bin && \
    rm /tmp/s6-overlay-amd64.tar.gz

ENTRYPOINT [ "/init" ]    
