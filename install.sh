#!/usr/bin/env bash
sudo apt update && sudo apt install curl libnotify-bin jq
echo Exec=$HOME/.config/autostart/Covid-19_notify.sh >> src/Covid-19.desktop
mv src/* ~/.config/autostart/
chmod +x ~/.config/autostart/Covid-19_notify.sh
