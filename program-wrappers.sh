android-studio () {
    nohup /opt/android-studio/bin/studio.sh &> /dev/null &
}

open () {
    xdg-open "$@" &> /dev/null
}

cds () {
  cd "$@"
  ls
}
