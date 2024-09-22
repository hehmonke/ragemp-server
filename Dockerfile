FROM debian:bookworm-slim
LABEL org.opencontainers.image.description="RageMp Server in Docker"

# Expose Ports
EXPOSE 22005/udp
EXPOSE 22006

RUN apt update && apt install -y wget libatomic1 procps && \
    apt clean autoclean && \
    apt autoremove --yes && \
    wget -O /tmp/server.tar.gz https://cdn.rage.mp/updater/prerelease/server-files/linux_x64.tar.gz && \
    tar -xzf /tmp/server.tar.gz -C /tmp && \
    mkdir /ragemp && \
    mv -v /tmp/ragemp-srv/* /ragemp/ && \
    rm -rf /tmp/ragemp-srv && \
    rm -rf /tmp/server.tar.gz && \
    rm -rf /var/lib/{apt,dpkg,cache,log}/

COPY setup-conf.sh /ragemp/setup-conf.sh
COPY entrypoint.sh /ragemp/entrypoint.sh
COPY entrypoint-null.sh /ragemp/entrypoint-null.sh
COPY conf.json /ragemp/conf-placeholders.json

RUN chmod +x /ragemp/ragemp-server && \
    chmod +x /ragemp/entrypoint.sh && \
    chmod +x /ragemp/entrypoint-null.sh

WORKDIR /ragemp

ENTRYPOINT ["sh", "/ragemp/entrypoint.sh"]
