cat << 'EOF' > airootfs/etc/skel/.bash_profile
if [ -z "$DISPLAY" ] && [ "$(tty)" = "/dev/tty1" ]; then
    export XDG_SESSION_TYPE=wayland
    export XDG_CURRENT_DESKTOP=KDE
    exec dbus-run-session startplasma-wayland
fi
EOF
