#!/usr/bin/env bash
# Ansi color code variables
red="\e[0;91m"
blue="\e[0;94m"
expand_bg="\e[K"
blue_bg="\e[0;104m${expand_bg}"
red_bg="\e[0;101m${expand_bg}"
green_bg="\e[0;102m${expand_bg}"
green="\e[0;92m"
white="\e[0;97m"
bold="\e[1m"
uline="\e[4m"
reset="\e[0m"
echo -e "${green}

░█──░█ ▀▀█▀▀ ░█▀▀█ ░█─── ▀█▀ 
░█▄▄▄█ ─░█── ░█─── ░█─── ░█─ 
──░█── ─░█── ░█▄▄█ ░█▄▄█ ▄█▄
${reset}";

echo -e "${green}${bold}USAGE:${reset}"
echo -e "${green}./ytcli.sh [music name]${reset}"

if [ -z "$1" ]
  then
    echo "No argument supplied. Please read the usage"
    exit 1
fi

query=$(printf '%s' "$*" | tr ' ' '+')

mpv "https://youtube.com/$(curl -s "https://vid.puffyan.us/search?q=$query" | grep -Eo "watch\?v=.{11}" | head -n 1)"
