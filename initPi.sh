
export v_date=`date +"%y%m%d_%H%M%S"`
#apt-get -y update
cp /etc/default/keyboard /etc/default/keyboard.$v_date
cp ./initPi/etc/default/keyboard /etc/default/keyboard

./initGit.sh
./fetchGit.sh

