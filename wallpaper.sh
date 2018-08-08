#!/bin/bash

wget http://epod.usra.edu/blog/2018/08/jackson-lake-wyoming.html 
grep 'class="asset-img-link"' jackson-lake-wyoming.html > temp-1.txt
a=$(awk -F "\"" '{print $4}' temp-1.txt) 
echo $a > temp-2.txt 
wget $a
b=$(awk -F "/" '{print $5}' temp-2.txt)
imname=$b
/usr/bin/gsettings set org.gnome.desktop.background picture-uri file:///$(pwd)/$imname
 

 
