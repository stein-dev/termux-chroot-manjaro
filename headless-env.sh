#!/system/bin/sh

CHROOT='/data/chrootmanjaro'

chroot "${CHROOT}" pacman -S --noconfirm chromium
chroot "${CHROOT}" pacman -S --noconfirm python3
chroot "${CHROOT}" pacman -S --noconfirm python-pip
chroot "${CHROOT}" pacman -S --noconfirm nodejs
chroot "${CHROOT}" pacman -S --noconfirm git
chroot "${CHROOT}" pacman -S --noconfirm base-devel
chroot "${CHROOT}" pacman -S --noconfirm sudo
chroot "${CHROOT}" pacman -S --noconfirm yarn