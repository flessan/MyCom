#!/bin/bash

# 1. Pasang os-prober
echo "==> Memasang os-prober..."
sudo pacman -S --noconfirm os-prober

# 2. Aktifkan os-prober di konfigurasi GRUB
echo "==> Mengonfigurasi /etc/default/grub..."
sudo sed -i 's/^#\?GRUB_DISABLE_OS_PROBER=.*/GRUB_DISABLE_OS_PROBER=false/' /etc/default/grub

# 3. Perbarui Menu GRUB
echo "==> Memperbarui konfigurasi GRUB..."
sudo grub-mkconfig -o /boot/grub/grub.cfg

echo "==> Selesai! OS lain sekarang seharusnya sudah terdeteksi di menu GRUB."
