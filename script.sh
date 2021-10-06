echo "configurando resolv.conf con cat"
cat <<TEST> /etc/resolv.conf
nameserver 192.168.100.3
TEST