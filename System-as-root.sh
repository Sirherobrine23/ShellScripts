#!/bin/bash

ui_print(){
  echo "$1"
}

if [ -d /system/system ];then
    ui_print "Seu sistema é system_as_root"
    SYSTEM=/system/system
else
    ui_print "Seu sistema não é system_as_root"
    SYSTEM=/system
fi

echo "$SYSTEM"