#!/bin/sh
# recomendo você deixar esse script em segundo plano no *nix com "/usr/sbin/status &""
LED="/sys/class/leds/tp-link:green:qss/brightness"
LED2="/dev/null"
URL="http://files.sirherobrine23.org"
update_led="10s"
# Iniciando o loop
while [ true ]; do 
  for counter in {1..15};do 
    sleep 0.2s
    echo "0" > $LED
    echo "1" > $LED2
    sleep 0.1s
    echo "1" > $LED
    echo "0" > $LED2
  done
wget -q -O tested --spider "$URL"
if [ $? -eq 0 ]; then
  echo "1" > $LED
  echo "0" > $LED2
else
  echo "0" > $LED
  echo "1" > $LED2
fi
sleep $update_led
done
