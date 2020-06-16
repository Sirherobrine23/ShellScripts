#!/bin/bash
FILES="$(cat ../name.txt)"
case $FILES in
  *.zip ) 
    sudo apt install -y unzip zip
    sudo unzip "$FILES" 
  ;;
  *.7z )
    sudo apt install -y p7zip
    sudo 7z -y x "$FILES"
  ;;
  *.tar.xz )
    sudo apt install -y xz-utils
    sudo tar -xvf "$(cat ../mame.txt)"
  ;;
  *.iso )
    sudo cp "$(cat ../mame.txt)" "$(cat ../mame.txt)_2"
  ;;
esac
