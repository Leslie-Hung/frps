#!/bin/sh

cd /frps

cat <<-EOF > /frps/frps.ini
[common]
bind_port = 80
dashboard_port = 443
token = leslie0128
dashboard_user = root
dashboard_pwd = root
vhost_http_port = 10080
vhost_https_port = 10443
EOF

echo $PORT
/frps/frps -c /frps/frps.ini
