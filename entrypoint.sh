#!/bin/sh

cd /frps

cat <<-EOF > /frps/frps.ini
[common]
bind_port = 7000
dashboard_port = 7500
token = leslie0128
dashboard_user = leslie0128
dashboard_pwd = leslie0128
vhost_http_port = 80
vhost_https_port = 443
EOF

echo $PORT
/frps/frps -c /frps/frps.ini
