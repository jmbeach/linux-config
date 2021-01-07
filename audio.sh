connect-echo () {
    bluetoothctl scan on | grep Echo -m 1 | head -1;espeak "Found the echo device"
}

listen-to-me () {
    pactl load-module module-loopback latency_msec=1
}

stop-listening () {
    pactl unload-module module-loopback
}