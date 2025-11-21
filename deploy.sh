#!/bin/bash

set -e

CONFIG_FILE="$HOME/.font_config"

if [ -f "$CONFIG_FILE" ]; then
    FONT_SIZE=$(cat "$CONFIG_FILE")
else
    FONT_SIZE="12"
fi

while [[ $# -gt 0 ]]; do
  case $1 in
    --large)
      FONT_SIZE="20"
      shift
      ;;
    --regular)
      FONT_SIZE="12"
      shift
      ;;
    *)
      echo "Usage: $0 [--large | --regular]"
      exit 1
      ;;
  esac
done

sed -i "s/#define FONT_SIZE [0-9]*/#define FONT_SIZE $FONT_SIZE/" "$HOME/dotfiles/dwm/config.h"
sed -i "s/#define FONT_SIZE [0-9]*/#define FONT_SIZE $FONT_SIZE/" "$HOME/dotfiles/st-config.h"
echo "$FONT_SIZE" > "$CONFIG_FILE"

ln -sf "$HOME/dotfiles/.emacs" "$HOME/.emacs"
ls -sf "$HOME/dotfiles/.xinitrc " "$HOME/.xinitrc"
ln -sf "$HOME/dotfiles/st-config.h" "$HOME/st/config.h"
ln -sf "$HOME/dotfiles/slstatus-config.h" "$HOME/slstatus/config.h"

echo "[OK] symlinks created"

cd "dwm"
sudo make clean install

echo "[OK] built dwm"

cd "$HOME/st"
sudo make clean install

cd "$HOME/slstatus"
sudo make clean install

echo "[OK] built st"

echo "[OK] script finished"
