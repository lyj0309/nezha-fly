FROM ghcr.io/naiba/nezha-dashboard:latest
# RUN apk --no-cache --no-progress add openssh-client

# ADD https://github.com/benbjohnson/litestream/releases/download/v0.3.8/litestream-v0.3.8-linux-amd64-static.tar.gz /tmp/litestream.tar.gz
# RUN tar -C /usr/local/bin -xzf /tmp/litestream.tar.gz && rm  /tmp/litestream.tar.g
# COPY etc/litestream.yml /etc/litestream.yml

COPY config.yaml .
COPY run.sh .
RUN chmod 777 *
ENTRYPOINT ["./run.sh"]