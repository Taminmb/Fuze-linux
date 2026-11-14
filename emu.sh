#!/bin/bash
LATEST_ISO=$(ls -1t out/*.iso | head -n 1)

echo "Lancement de : $LATEST_ISO"

qemu-system-x86_64 \
  -enable-kvm -m 4G -cpu host -smp 4 \
  -cdrom "$LATEST_ISO" \
  -vga virtio -display gtk,gl=on
