echo Ubuntu for SillyDev
echo Installing...
curl -LO https://cdimage.ubuntu.com/ubuntu-base/focal/daily/current/focal-base-amd64.tar.gz
curl -LO https://proot.gitlab.io/proot/bin/proot
chmod +x ./proot
mkdir root
tar -xf focal-base-amd64.tar.gz -C root
rm focal-base-amd64.tar.gz
echo ./proot -0 -b /etc/host.conf -b /etc/hosts -b /etc/nsswitch.conf -b /etc/resolv.conf -b /dev/ -b /sys/ -b /proc/ -b /tmp/ -w /root -r root /usr/bin/env -i HOME=/root USER=root force_color_prompt=yes /bin/su > .bashrc
echo exit >> .bashrc
chmod +x .bashrc
echo Done! Restart to finish.
