#!/bin/bash
LOCATE="/var/www/html"
TM="/tmp"
DATE="$(TZ=UTC+3 date +"%d-%m-%Y-%H-%M-%S")"
ID="1-0eK1Llv6fVbLvtLYTBAtbGxk6QN6yfo"
sudo apt install unzip zip

for i in $(ls)
do
    zip "$TM/$i-$DATE.zip" -r "$i";
    gdrive upload $ID "$TM/$i-$DATE.zip";
    rm -rf "$TM/$i-$DATE.zip";
done