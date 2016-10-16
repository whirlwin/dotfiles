SCRIPTS_DIRECTORY=$(dirname $0)
CONFIG_LOCATION=~/.config/gconf/apps/guake/keybindings/local
mkdir -p "$CONFIG_LOCATION"
cp -f "$SCRIPTS_DIRECTORY/../.config/gconf/apps/guake/keybindings/local/%gconf.xml" "$CONFIG_LOCATION"

