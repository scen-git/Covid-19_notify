#!/usr/bin/env bash
interval=6 #in hours

function main() {
  array=( "positif : $positif" "sembuh : $sembuh" "meninggal : $meninggal")
  for i in "${array[@]}"
    do
      notify-send --app-name=Covid-19 --urgency=normal "Corona virus info" "Total $i"
      sleep 7
    done
    sleep 3
    notify-send --app-name=Covid-19 --urgency=critical "Stay at 127.0.0.1 or ::1" "#dirumahaja"
    echo $ran
}

while true
do
  api="https://api.kawalcorona.com/indonesia/"
  positif=$(curl -s $api | jq -r '.[].positif')
  sembuh=$(curl -s $api | jq -r '.[].sembuh')
  meninggal=$(curl -s $api | jq -r '.[].meninggal')
  main
  sleep $(expr $interval \* 3600)
done

#Just_Humanz
