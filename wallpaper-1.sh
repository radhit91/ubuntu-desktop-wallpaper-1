#!/bin/bash

imname=$(ls -al | grep '.jpg')
echo $imname > temp-3.txt
a=$(awk -F " " 'BEGIN {i=9} {while($i!=NULL) {print $i ;  i=i+9 }}' temp-3.txt)
#echo $a > temp-4.txt
imname1=$(shuf -n 1 temp-4.txt)
/usr/bin/gsettings set org.gnome.desktop.background picture-uri file:///$(pwd)/$imname1

