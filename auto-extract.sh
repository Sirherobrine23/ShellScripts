#!/bin/bash
FILES="$(cat ../name.txt)"
case $FILES in
  *.zip* ) 
    sudo apt install -y unzip zip
    sudo unzip "$FILES" 
  ;;
  *.7z* )
    sudo apt install -y p7zip
    sudo 7z -y x "$FILES"
  ;;
esac