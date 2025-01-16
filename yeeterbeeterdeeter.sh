sudo rm /var/run/openvswitch/*.pid
MYHOSTNAME=$(hostname)

sudo tee /etc/cloud/templates/hosts.debian.tmpl <<EOF
192.168.199.69 k8s.honker.dev k8s.honker.dev
192.168.199.120 $MYHOSTNAME $MYHOSTNAME
127.0.1.1 $MYHOSTNAME $MYHOSTNAME
127.0.0.1 localhost
::2 localhost ip6-localhost ip6-loopback
ff02::1 ip6-allnodes
ff02::2 ip6-allrouters
EOF

sudo tee /etc/hosts <<EOF
192.168.199.69 k8s.honker.dev k8s.honker.dev
192.168.199.120 $MYHOSTNAME $MYHOSTNAME
127.0.1.1 $MYHOSTNAME $MYHOSTNAME
127.0.0.1 localhost
::2 localhost ip6-localhost ip6-loopback
ff02::1 ip6-allnodes
ff02::2 ip6-allrouters
EOF
