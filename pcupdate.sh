#!/bin/bash

updt = $(checkupdates | wc -l)
echo "${updt} Acualizaciones necesarias"

mem = "$(free -h | awk '/^Mem:/ {print $3 "/" $2}'}"
echo -e "${mem} ram"