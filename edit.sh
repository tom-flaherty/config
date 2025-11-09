#!/usr/bin/env bash

pkexec env DISPLAY=$DISPLAY XAUTHORITY=$XAUTHORITY \
    gnome-text-editor /etc/nixos/configuration.nix
