<p>
  <a href="https://github.com/hehmonke/ragemp-server/blob/master/LICENSE">
    <img alt="License: MIT" src="https://img.shields.io/badge/License-MIT-yellow.svg" target="_blank" />
  </a>
</p>

# RageMP Server in Docker
A docker container for RAGE Multiplayer

## Usage

```sh
docker run --name ragemp-server -p 22005:22005/udp -p 22006:22006 ghcr.io/hehmonke/ragemp-server
```

## Also you can create container without starting server (example: for debug purposes when you're manually starting server)

```sh
services:
  ragemp-server:
    image: ghcr.io/hehmonke/ragemp-server
    entrypoint: /ragemp/entrypoint-null.sh
    restart: unless-stopped
    ports:
      - "22005:22005/udp"
      - "22006:22006/tcp"
```

## Variables

The variables have been implemented with default values, so they do not have to be set.

- RAGEMP_ANNOUNCE=false
- RAGEMP_BIND=0.0.0.0
- RAGEMP_GAMEMODE=freeroam
- RAGEMP_ENCRYPTION=false
- RAGEMP_MAXPLAYERS=500
- RAGEMP_NAME=RAGE:MP Unofficial server
- RAGEMP_STREAM_DISTANCE=500
- RAGEMP_PORT=22005
- RAGEMP_DISALLOW_MULTIPLE_CONNECTIONS_PER_IP=false
- RAGEMP_LIMIT_TIME_OF_CONNECTIONS_PER_IP=0
- RAGEMP_URL=
- RAGEMP_LANGUAGE=en
- RAGEMP_SYNC_RATE=40
- RAGEMP_RESOURCE_SCAN_THREAD_LIMIT=0
- RAGEMP_MAX_PING=120
- RAGEMP_MIN_FPS=24
- RAGEMP_MAX_PACKET_LOSS=0.2
- RAGEMP_ALLOW_CEF_DEBUGGING=false
- RAGEMP_CSHARP=false
- RAGEMP_ENABLE_HTTP_SECURITY=false
- RAGEMP_VOICE_CHAT=false
- RAGEMP_VOICE_CHAT_SAMPLE_RATE=24000
- RAGEMP_FASTDL_HOST=
- RAGEMP_SERVER_SIDE_WEAPONS_ONLY_MODE=true
- RAGEMP_FQDN=
- RAGEMP_RESOURCES_COMPRESSION_LEVEL=1
- RAGEMP_NODE_COMMANDLINE_FLAGS=
- RAGEMP_SYNCHRONIZATION_EXTRAPOLATION_MULTIPLIER=1.0
- RAGEMP_HTTP_THREADS=50
- RAGEMP_TRIGGER_COMPRESSION_LOGGING=false
- RAGEMP_TRIGGER_COMPRESSION_TRAINING=false
- RAGEMP_TRIGGER_COMPRESSION_DICTIONARY=
- RAGEMP_CREATE_FASTDL_SNAPSHOT=false
- RAGEMP_DISABLE_CLIENT_PACKAGES_RAM_CACHE=false
- RAGEMP_CLIENT_PACKAGES_SHARED_FOLDER=

