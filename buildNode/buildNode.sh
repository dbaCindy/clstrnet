
### This will build an AP with subnet range 10.10.1.64/24 10.10.1.64 - 10.10.1.127
### AP will be SSID:   Cindy_AP
### AP passwd will be: raspberry
###
### 

cp ./etc/network/interfaces                 /etc/network/interfaces
cp ./etc/wpa_supplicant/wpa_clstrnet01.conf /etc/wpa_supplicant/wpa_clstrnet01.conf

shutdown -r now
