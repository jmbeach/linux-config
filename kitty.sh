set-background-blue () {
    printf '\x1b]11;#02193d\x1b\\'
}

set-background-pink () {
    kitty @ set-colors background=pink foreground=#333
}

set-background-black () {
    kitty @ set-colors background=#0e0e0e foreground=#e3e3e3
}

upgrade-kitty () {
    curl -L https://sw.kovidgoyal.net/kitty/installer.sh | sh /dev/stdin
}