get_my_ip () {
  curl http://ifconfig.me
  echo ""
}

ping-until-up () {
  while ! ping -c 3 $1 ; do sleep 2 ; done ;
  espeak "Host is up"
}

disable-ip6 () {
  sudo sysctl -w net.ipv6.conf.all.disable_ipv6=1
  sudo sysctl -w net.ipv6.conf.default.disable_ipv6=1
  sudo sysctl -w net.ipv6.conf.lo.disable_ipv6=1
}

flush-dns () {
  sudo /etc/init.d/networking restart
}
