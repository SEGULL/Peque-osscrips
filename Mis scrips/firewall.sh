#! /bin/bash

iptables -F
iptables -A INPUT -i lo -j ACCEPT
iptables -A INPUT -s 192.168.19.0/24 -i eth0 -j ACCEPT
iptables -t nat -A POSTROUTING -s 192.168.19.0/24 -o eth0 -j MASQUERADE

iptables -F
iptables -A INPUT -i lo -j ACCEPT
iptables -A INPUT -s 192.168.18.0/24 -i eth0 -j ACCEPT
iptables -t nat -A POSTROUTING -s 192.168.18.0/24 -o eth0 -j MASQUERADE

#route add -net 192.168.19.0/24 gw 192.168.19.1
route add -net 192.168.18.0/24 gw 192.168.18.1
route add -net 192.168.19.0/24 gw 192.168.19.1

echo 1 > /proc/sys/net/ipv4/ip_forward

#update-rc.d firewall.sh defaults
