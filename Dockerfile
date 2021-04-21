FROM linuxserver/qbittorrent:4.3.0202006121503-7010-e7622d2ubuntu18.04.1-ls51

# add ghost config file
COPY root/ /

WORKDIR /usr/local/bin

# add default qBittorrent.conf
COPY qBittorrent.conf qBittorrent.conf

# add scripts
COPY password-generator.py password-generator.py
COPY qbit-postprocess.sh qbit-postprocess.sh
