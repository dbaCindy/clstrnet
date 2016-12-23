
### This will build an AP with subnet range 10.10.1.64/24 10.10.1.64 - 10.10.1.127
### AP will be SSID:   Cindy_AP
### AP passwd will be: raspberry
###
### 

apt-get -y install hostapd
cp ./etc/dhcpcd.conf                        /etc/dhcpcd.conf
cp ./etc/network/interfaces                 /etc/network/interfaces
cp ./etc/hostapd/hostapd.conf               /etc/hostapd/hostapd.conf
cp ./etc/default/hostapd                    /etc/default/hostapd
cp ./etc/sysctl.conf                        /etc/sysctl.conf
cp ./etc/wpa_supplicant/wpa_clstrnet01.conf /etc/wpa_supplicant/wpa_clstrnet01.conf

sysctl -w net.ipv4.ip_forward=1
iptables -t nat -A POSTROUTING -o wlan1 -j MASQUERADE  
iptables -A FORWARD -i wlan1 -o wlan0 -m state --state RELATED,ESTABLISHED -j ACCEPT  
iptables -A FORWARD -i wlan0 -o wlan1 -j ACCEPT
sh -c "iptables-save > /etc/iptables.ipv4.nat"

cp ./etc/rc.local             /etc/rc.local

service hostapd start 

shutdown -r now
