ISO=$(ls -t out/*.iso | head -n 1)
echo "Lancement de l'ISO : $ISO"
sudo qemu-system-x86_64 -enable-kvm -m 3G -vga virtio -cdrom "$ISO"
