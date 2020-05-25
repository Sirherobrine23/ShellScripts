#!/bin/bash
cd /home/Minecraft/mcpe/
echo 'Fazendo backup do mapa'
DATE=$(TZ=UTC+3 date +"%d-%m-%Y-%H-%M-%S")
cd worlds/ ; zip $DATE-"Sirherobrine23".zip -r "Sirherobrine23" 
gdrive upload --parent 1-FWzQJWhhJK_00ETU4uVOg6R5c5p_yMP $DATE-Sirherobrine23.zip
rm $DATE-Sirherobrine23.zip
exit 1
