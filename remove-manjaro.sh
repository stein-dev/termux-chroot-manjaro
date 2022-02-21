#!/system/bin/sh
set -e

if [ "$(id -u)" != "0" ]; then
   echo "This script must be run as root" 1>&2
   exit 1
fi

CHROOT='/data/chrootmanjaro'

./unmount-manjarotest.sh || true

echo "Deleting manjaro rootfs"
rm -rf $CHROOT
echo "Done"