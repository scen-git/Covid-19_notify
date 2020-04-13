#!/usr/bin/env bash
function checkOS() {
  if [[ $(lsb_release -i | cut -f 2-) == "Arch" ]]; then
    sudo pacman -S curl jq libnotify git --noconfirm
  elif [[ $(lsb_release -i | cut -f 2-) == "OpenSUSE" ]]; then
    sudo zypper install libnotify curl jq git -y
  elif [[ -f /etc/apt/sources.list ]]; then
    sudo apt update && sudo apt install curl libnotify-bin jq git -y
  elif [[ -f /etc/redhat-release ]]; then
    sudo yum update && sudo yum install curl jq libnotify git -y
  fi
}
checkOS

wget https://raw.githubusercontent.com/scen-git/Covid-19_notify/master/src/Covid_19.desktop -O ~/.config/autostart/Covid-19.desktop
echo Exec=$HOME/.config/autostart/Covid-19_notify.sh >> ~/.config/autostart/Covid-19.desktop
wget https://raw.githubusercontent.com/scen-git/Covid-19_notify/master/src/Covid-19_notify.sh -O ~/.config/autostart/Covid-19_notify.sh
chmod +x ~/.config/autostart/Covid-19_notify.sh

#first run inisialisasi shell
~/.config/autostart/Covid-19_notify.sh &
