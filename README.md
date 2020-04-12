# <p align="center"> <b> Covid-19 notifikasi  </b> </p>  

#### Perkenalan
Sebuah simple bash script yang menampilkan informasi tentang virus corona(Covid-19),hal yang ditampilkan adalah informasi seputar jumlah positif,sembuh, dan meninggal,bash script ini menggunakkan API dari [kawalcorona](https://api.kawalcorona.com)  
![alt text](https://raw.githubusercontent.com/scen-git/Covid-19_notify/master/Screenshot/gnome/gnome_totalsembuh.png)  

#### Hal yang dibutuhkan
```
curl
notify-send atau libnotify-bin
jq
```

#### Cara pemasangan
```
sudo apt install git jq
cd /tmp
git clone https://github.com/scen-git/Covid-19_notify
echo Exec=$HOME/.config/autostart/Covid-19_notify.sh >> /tmp/Covid-19_notify/Covid-19.desktop
cp /tmp/Covid-19_notify/* ~/.config/autostart/
chmod +x ~/.config/autostart/Covid-19_notify.sh
```
lalu reboot atau jalankan perintah ```~/.config/autostart/Covid-19_notify.sh &``` jika tidak ingin melakukan reboot,secara otomatis script ini akan berjalan 6 jam sekali anda bisa mengubahnya dibagian interval  
```interval=6 #in hours```  
