#!/bin/bash
set -e

if ! id "fuze" &>/dev/null; then
    useradd -m -G wheel,audio,video,storage,power -s /bin/bash fuze
    echo "fuze:fuze" | chpasswd
fi


if ! grep -q "fastfetch" /home/fuze/.bashrc 2>/dev/null; then
    echo "fastfetch -c /etc/fastfetch/config.jsonc" >> /home/fuze/.bashrc
fi

chown -R fuze:fuze /home/fuze
