#!/bin/bash

NOCOLOR='\033[0m'
RED='\033[0;31m'
GREEN='\033[0;32m'
ORANGE='\033[0;33m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
PLTREMTGRAY='\033[0;37m'
DARKGRAY='\033[1;30m'
LIGHTRED='\033[1;31m'
LIGHTGREEN='\033[1;32m'
YELLOW='\033[1;33m'
LIGHTBLUE='\033[1;34m'
LIGHTPURPLE='\033[1;35m'
LIGHTCYAN='\033[1;36m'
WHITE='\033[1;37m'

clear
echo -e  "▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬"
echo -e  "▮"
echo -e  "▮ﾠﾠ${BLUE}CodeHub ${PURPLE}Install ${YELLOW}Packages${NOCOLOR}"
echo -e  "▮"
echo -e  "▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬"

echo -e  "\n\n${GREEN}► Updating packages\n${NOCOLOR}"
pkg upgrade -y && apt update -y
clear


echo -e  "${GREEN}►Select languages to install:\n${NOCOLOR}"
echo -e  "${BLUE}1- Python${NOCOLOR}"
echo -e  "${BLUE}2- Node${NOCOLOR}"
echo -e  "${BLUE}3- C${NOCOLOR}"
echo -e  "${BLUE}4- C++${NOCOLOR}"
echo -e  "${BLUE}5- C#${NOCOLOR}"
echo -e  "\n"
echo -e  "Enter numbers separated by commas \",\" (e.g., 1,2,4)"
echo -e  -n "\n${GREEN}► Languages: ${NOCOLOR}"

read languages

echo -e  "\n${GREEN}► Languages selected: $languages${NOCOLOR}\n"

IFS=','
read -ra selected_languages <<< "$languages"

for lang in "${selected_languages[@]}"; do
    case $lang in
        1) echo -e  "\n\n${GREEN}► Installing Python\n${NOCOLOR}"
           pkg install python3 -y
           clear ;;
        2) echo -e  "\n\n${GREEN}► Installing NodeJs\n${NOCOLOR}"
           pkg install nodejs -y
           clear ;;
        3) echo -e  "\n\n${GREEN}► Installing C\n${NOCOLOR}"
           pkg install clang -y
           clear ;;
        4) echo -e  "\n\n${GREEN}► Installing C++\n${NOCOLOR}"
           pkg install g++ -y
           clear ;;
        5) echo -e  "\n\n${GREEN}► Installing C#\n${NOCOLOR}"
           pkg install mono -y
           clear ;;
        *) echo -e  "\n${RED}Invalid option: $lang${NOCOLOR}" ;;
    esac
done

echo -e  "\n\n${GREEN}▬▬▬▬▬▬▬▬▬▬▬ INSTALL FINISHED ▬▬▬▬▬▬▬▬▬▬▬\n\n${NOCOLOR}"
echo -e  "${BLUE} ► Now you can open CodeHub and run your commands :)"
echo -e  "\n"

sleep 3s
clear
