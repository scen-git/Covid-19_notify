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

<p align="center">
<b> macOS </b> <br>
<img src="https://github.com/naufalfachrian/Covid-19_notify/blob/darwin/Screenshot/osx/OSX_Total_Sembuh.png"><br>
</p>

#### Hal yang dibutuhkan
```
curl
libnotify-bin
jq
```

#### OS yang disupport
Arch Linux Base  
Debian Base  
Rhel Base  
Gentoo,LFS & BSD base #*You know what you have to do*  
OS X Maverick (10.9) atau versi macOS yang lebih mutakhir

#### Cara pemasangan
```
curl -s https://raw.githubusercontent.com/scen-git/Covid-19_notify/master/install.sh | bash
```
lalu logout dan login kembali secara otomatis script ini akan berjalan 6 jam sekali anda bisa mengubahnya difile ```~/.config/autostart/Covid-19_notify.sh``` dibagian interval ```interval=6 #in hours```  




Created by  
<img src="https://raw.githubusercontent.com/scen-git/Covid-19_notify/master/Screenshot/Scen.png">
