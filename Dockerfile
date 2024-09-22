FROM debian:bookworm-slim

# Expose Ports
EXPOSE 22005/udp
EXPOSE 22006

RUN apt update && apt install -y wget libatomic1 procps && \
    apt clean autoclean && \
    apt autoremove --yes && \
    wget -O /tmp/server.tar.gz https://cdn.rage.mp/updater/prerelease/server-files/linux_x64.tar.gz && \
    tar -xzf /tmp/server.tar.gz -C /tmp && \
    mkdir /ragemp && \
    ls /tmp && \
    mv -v /tmp/ragemp-srv/* /ragemp/ && \
    ls /ragemp && \
    rm -rf /tmp && \
    chmod +x /ragemp/ragemp-server

COPY entrypoint.sh /ragemp/entrypoint.sh
COPY conf.json /ragemp/conf-placeholders.json

WORKDIR /ragemp

ENTRYPOINT ["sh", "/ragemp/entrypoint.sh"]
