get_my_ip () {
  curl http://ifconfig.me
  echo ""
}

ping-until-up () {
  while ! ping -c 3 $1 ; do sleep 2 ; done ;
  espeak "Host is up"
}