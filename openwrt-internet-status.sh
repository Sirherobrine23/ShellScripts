#!/bin/sh
LED="/sys/class/leds/tp-link:green:qss/brightness"
LED2="/dev/null"
update_led="10s"
# Iniciando o loop
while [ true ]; do 
# checando a conexão com a interne (http do google.com.br)
wget -q -O internet-status --spider http://google.com.br

if [[ $? -eq 0 ]]; then
  # se haver internet ligara o led
  echo "1" > $LED
  echo "0" > $LED2
else
  # se não haver internet desligara o led
  echo "0" > $LED
  echo "1" > $LED2
fi
sleep $update_led
done
