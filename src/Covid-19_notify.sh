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

function osx() {
  array=("positif : $positif" "sembuh : $sembuh" "meninggal : $meninggal")
  for i in "${array[@]}"
    do
      osascript -e "display notification \"Total $i\" with title \"Corona virus info\""
      sleep 7
    done
    sleep 3
    osascript -e 'display notification "#dirumahaja" with title "Stay at 127.0.0.1 or ::1"'
}

while true
do
  api="https://api.kawalcorona.com/indonesia/"
  data=$(curl -s $api)
  positif=$(echo $data | jq -r '.[].positif')
  sembuh=$(echo $data | jq -r '.[].sembuh')
  meninggal=$(echo $data | jq -r '.[].meninggal')
  if [[ $(pgrep plasmashell | head -n 1) -gt 1 ]]; then
    kde
  elif [[ "$OSTYPE" == "darwin"* ]]; then
    osx
  else
    notify
  fi

  sleep $(expr $interval \* 3600)
done

#Just_Humanz
