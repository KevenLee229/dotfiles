#!/bin/bash
mkdir -p ~/.config/systemd/user
cp emacs.service ~/.config/systemd/user
systemctl enable --user emacs
systemctl start --user emacs
