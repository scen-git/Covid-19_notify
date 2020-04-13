#!/usr/bin/env bash
interval=6 #in hours

function notify() {
  array=("positif : $positif" "sembuh : $sembuh" "meninggal : $meninggal")
  for i in "${array[@]}"
    do
      notify-send --app-name=Covid-19 --urgency=normal --icon=dialog-information "Corona virus info" "Total $i"
      sleep 7
    done
    sleep 3
    notify-send --app-name=Covid-19 --urgency=critical "Stay at 127.0.0.1 or ::1" "#dirumahaja"
}

function kde() {
  array=("positif : $positif" "sembuh : $sembuh" "meninggal : $meninggal")
  for i in "${array[@]}"
    do
      kdialog --title "Corona virus info" --passivepopup "Total $i"
      sleep 7
    done
    sleep 3
    kdialog --title "Stay at 127.0.0.1 or ::1" --passivepopup  "#dirumahaja"
}

while true
do
  api="https://api.kawalcorona.com/indonesia/"
  positif=$(curl -s $api | jq -r '.[].positif')
  sembuh=$(curl -s $api | jq -r '.[].sembuh')
  meninggal=$(curl -s $api | jq -r '.[].meninggal')
  if [[ $(pgrep plasmashell | head -n 1) -gt 1 ]]; then
    kde
  else
    notify
  fi

  sleep $(expr $interval \* 3600)
done

#Just_Humanz
