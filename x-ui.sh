#!/bin/bash

apt update > /dev/null
apt install -y curl >/dev/null 
apt install -y socat >/dev/null
curl https://get.acme.sh | sh
~/.acme.sh/acme.sh --register-account -m xxx@xxx.xxx > /dev/null

~/.acme.sh/acme.sh --issue -d www.shoreisme.cf --standalone
~/.acme.sh/acme.sh --installcert -d www.shoreisme.cf --key-file /root/private.key --fullchain-file /root/cert.crt 

bash <(curl -Ls https://raw.githubusercontent.com/vaxilu/x-ui/master/install.sh)
