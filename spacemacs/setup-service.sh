#!/bin/bash
mkdir -p ~/.config/systemd/user
cp emacs.service ~/.config/systemd/user
systemctl enabel --user emacs
systemctl start --user emacs
