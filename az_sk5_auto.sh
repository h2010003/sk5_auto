#!/bin/bash
rm -f /root/install.sh
rm -f /root/install_auto.sh
rm -f /root/sk5_auto.sh
rm -f /var/spool/cron/root
sudo yum -y install wget && wget --no-check-certificate https://raw.githubusercontent.com/reno1314/danted/master/install_R.sh -O install.sh
/etc/init.d/sockd start
wget --no-check-certificate https://raw.githubusercontent.com/reno1314/sk5_auto/master/sk5_auto.sh -O sk5_auto.sh && chmod +x sk5_auto.sh
echo "@reboot sleep 35 && bash /root/sk5_auto.sh" >> /var/spool/cron/root

