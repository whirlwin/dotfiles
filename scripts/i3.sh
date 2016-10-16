#!/bin/sh

SCRIPTS_DIRECTORY=$(dirname $0)
CONFIG_LOCATION=~/.config/i3
mkdir -p "$CONFIG_LOCATION"
cp -f "$SCRIPTS_DIRECTORY/../.config/i3/config" "$CONFIG_LOCATION/config"

