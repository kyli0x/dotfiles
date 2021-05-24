if [[ "$(tty)" = "dev/tty1" ]]; then
    pgrep dwm || startx
fi
eval "$(gh completion -s zsh)"

