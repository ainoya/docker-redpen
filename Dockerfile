FROM quay.io/ainoya/java

WORKDIR /tmp
RUN wget -q https://github.com/redpen-cc/redpen/releases/download/redpen-1.7.4/redpen-1.7.4.tar.gz -O - | tar xz && \
    cp -av redpen-distribution-1.7.4/* /usr/local/ && \
    rm -rf redpen-distribution-1.7.4

RUN export PATH=$PATH:/usr/local/bin
WORKDIR /data

CMD ["/usr/local/bin/redpen"]
