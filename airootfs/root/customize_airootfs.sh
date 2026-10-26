#!/bin/bash

if ! id "fuze" &>/dev/null; then
    useradd -m -G wheel -s /bin/bash fuze
    echo "fuze:fuze" | chpasswd  # Mot de passe temporaire "fuze" (utile en cas de besoin)
fi

echo "%wheel ALL=(ALL:ALL) ALL" >> /etc/sudoers

echo "fastfetch -c /etc/fastfetch/config.jsonc" >> /home/fuze/.bashrc
chown -R fuze:fuze /home/fuze/.bashrc
