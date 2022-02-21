CHROOT='/data/chrootmanjaro'


chroot "${CHROOT}" pacman-key --init
chroot "${CHROOT}" pacman-key --populate manjaro
chroot "${CHROOT}" pacman-key --populate archlinuxarm
chroot "${CHROOT}" pacman-key --populate archlinux
chroot "${CHROOT}" pacman-mirrors -c poland
chroot "${CHROOT}" pacman -Syu --noconfirm
chroot "${CHROOT}" pacman -S --noconfirm util-linux

sudo rm -f "${CHROOT:?}"/var/cache/pacman/pkg/* || true