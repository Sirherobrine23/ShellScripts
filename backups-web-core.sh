#!/bin/bash
sudo apt install unzip zip
LOCATE="/var/www/html"
TM="/tmp"
DATE="$(TZ=UTC+3 date +"%d-%m-%Y-%H-%M-%S")"
MKDIRID="ID-DA-PASTA-Raiz"
gdrive mkdir $(echo $DATE) -p "$MKDIRID" >> $TM/ID.txt
sed -i "s| created||g" "$TM/ID.txt"
sed -i "s|Directory ||g" "$TM/ID.txt"
ID="$(cat $TM/ID.txt)"
cd "$LOCATE"
for i in $(ls)
do
    zip "$TM/$i-$DATE.zip" -r "$i";
    gdrive upload $TM/$i-$DATE.zip -p $ID
    rm -rf "$TM/$i-$DATE.zip";
done
