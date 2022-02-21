#!/system/bin/sh

CHROOT='/data/chrootmanjaro'
username="stein"
password="15364"

cat >>"${CHROOT}/root/.bash_profile" <<- .
## Add new user account
useradd -m -G wheel -s /bin/bash ${username}
echo "${username}:${password}" | chpasswd
sed -i -e "/root ALL=(ALL) ALL/a ${username} ALL=(ALL) ALL" \\
  -e "s/# %wheel ALL=(ALL) ALL/%wheel ALL=(ALL) ALL/" /etc/sudoers
echo "exec su - ${username}" >/root/.bash_profile
bash /root/.bash_profile
.
echo "Done"