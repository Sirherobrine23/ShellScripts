#!/bin/bash
cd /home/Minecraft/mcpe/
LD_LIBRARY_PATH=. ./bedrock_server
bash /bc/mcpe-backup.sh
exit 1
