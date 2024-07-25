MODDIR="${0%/*}"
ADG_DIR="$MODDIR/bin"

sleep 10
SSL_CERT_DIR="/system/etc/security/cacerts/" setuidgid root:net_raw "$ADG_DIR/AdGuardHome" >>"$ADG_DIR/AdGuardHome.log" 2>&1 &

"$MODDIR/apply_iptables.sh"
