#!/bin/bash
loginctl enable-linger vincnt054

su vincnt054 << 'EOF'

export XDG_RUNTIME_DIR=/run/user/$(id -u vincnt054)
export DBUS_SESSION_BUS_ADDRESS=/run/user/$(id -u vincnt054)/bus

systemctl --user daemon-reload
systemctl --user enable emacs
