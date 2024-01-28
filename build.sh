#!/bin/sh
NOCOLOR='\033[0m'
RED='\033[0;31m'
GREEN='\033[0;32m'
ORANGE='\033[0;33m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
PLTREMTGRAY='\033[0;37m'
DARKGRAY='\033[1;30m'
PURPLE='\033[1;31m'
PLTREMTGREEN='\033[1;32m'
YELLOW='\033[1;33m'
PLTREMTRED='\033[1;34m'
PLTREMTPURPLE='\033[1;35m'
PLTREMTCYAN='\033[1;36m'
WHITE='\033[1;37m'

clear
echo "▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬"
echo "▮"
echo "▮ﾠﾠ${BLUE}CodeHub ${ORANGE}Install ${YELLOW}Packages${NOCOLOR}"
echo "▮"
echo "▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬"

echo "\n\n${GREEN}► Updating packages\n${NOCOLOR}"

pkg upgrade && apt update -y
clear

echo "\n\n${GREEN}► Installing NodeJs\n${NOCOLOR}"

pkg install nodejs -y
clear

echo "\n\n${GREEN}► Installing Python\n${NOCOLOR}"

pkg install python3 -y
clear

echo "\n\n${GREEN}▬▬▬▬▬▬▬▬▬▬▬ INSTALL FINISHED ▬▬▬▬▬▬▬▬▬▬▬\n\n${NOCOLOR}"
echo "${BLUE} ► Now you can open CodeHub and run your commands :)"
