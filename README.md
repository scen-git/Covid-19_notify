# <p align="center"> <b> Covid-19 notifikasi  </b> </p>  

#### Perkenalan
Sebuah simple bash script yang menampilkan informasi tentang virus corona(Covid-19),hal yang ditampilkan adalah informasi seputar jumlah positif,sembuh, dan meninggal,bash script ini menggunakkan API dari [kawalcorona](https://api.kawalcorona.com)  


<p align="center">
<b> Gnome </b> <br>
<img src="https://raw.githubusercontent.com/scen-git/Covid-19_notify/master/Screenshot/gnome/gnome_positif.png"><br>
</p>

<p align="center">
<b> KDE </b> <br>
<img src="https://raw.githubusercontent.com/scen-git/Covid-19_notify/master/Screenshot/kde/kde_totalmeninggal.png"><br>
</p>

<p align="center">
<b> Xfce </b> <br>
<img src="https://raw.githubusercontent.com/scen-git/Covid-19_notify/master/Screenshot/xfce/XFCE_salan.png"><br>
</p>

#### Hal yang dibutuhkan
```
curl
notify-send atau libnotify-bin
jq
```

#### Cara pemasangan
```
cd /tmp
git clone https://github.com/scen-git/Covid-19_notify
cd Covid-19_notify
./install.sh
```
lalu logout dan login kembali secara otomatis script ini akan berjalan 6 jam sekali anda bisa mengubahnya dibagian interval ```interval=6 #in hours```  
