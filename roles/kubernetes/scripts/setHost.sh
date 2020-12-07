#!/bin/bash

ip a |grep eth1 |grep 192.168.56.10 |awk '{print $2}' > /tmp/ip.txt

sed -i 's/\/24//g' /tmp/ip.txt

echo "$(cat /tmp/ip.txt) ${HOSTNAME} ${HOSTNAME}" >> /etc/hosts

