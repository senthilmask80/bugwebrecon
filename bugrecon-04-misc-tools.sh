#!/bin/bash

STARTIME=$(date +%s)
LOGFILE="install.log"

BLINK='\e[5m'
BOLD='\e[1m'
LIGHT_GREEN='\e[92m'
LIGHT_YELLOW='\e[93m'
LIGHT_CYAN='\e[96m'
NORMAL='\e[0m'
RED='\e[31m'
UNDERLINE='\e[4m'

testcmd () {
    command -v "$1" >/dev/null
}

# Wipe log file on every install
echo "" > $LOGFILE

echo -e "\n-----------------------------------------"
echo -e "${BOLD}${LIGHT_YELLOW}[~] Installing ruby tools${NORMAL}"
echo "-----------------------------------------"

if [ ! -d "$TOOLS_DIR/WhatWeb" ]; then
    echo -e "${BOLD}${LIGHT_GREEN}[+] Installing WhatWeb to $TOOLS_DIR/...${NORMAL}"
    git clone https://github.com/urbanadventurer/WhatWeb.git $TOOLS_DIR/WhatWeb
    cd $TOOLS_DIR/WhatWeb
    bundle install
    cd
else
    echo -e "${BOLD}${LIGHT_GREEN}[+] Installing WhatWeb to $TOOLS_DIR/...${LIGHT_YELLOW}[ALREADY INSTALLED]${NORMAL}"
fi


echo -e "\n-----------------------------------------"
echo -e "${BOLD}${LIGHT_YELLOW}[~] Installing misc tools${NORMAL}"
echo "-----------------------------------------"

if [ ! -f "$TOOLS_DIR/chromedriver" ]; then
    echo -e "${BOLD}${LIGHT_GREEN}[+] Installing chromedriver to $TOOLS_DIR...${NORMAL}"
    wget https://chromedriver.storage.googleapis.com/78.0.3904.105/chromedriver_linux64.zip -O chromedriver.zip
    unzip chromedriver.zip
    sudo mv chromedriver $TOOLS_DIR
    rm -rf chromedriver.zip
else
    echo -e "${BOLD}${LIGHT_GREEN}[+] Installing chromedriver to $TOOLS_DIR...${LIGHT_YELLOW}[ALREADY INSTALLED]${NORMAL}"
fi


if ! testcmd massdns; then
    echo -e "${BOLD}${LIGHT_GREEN}[+] Installing massdns...${NORMAL}"
    git clone https://github.com/blechschmidt/massdns.git
    cd massdns
    make >> $LOGFILE 2>&1
    sudo mv bin/massdns /usr/local/bin
    cp lists/resolvers.txt $TOOLS_DIR/resolvers.txt
    cd ..
    rm -rf massdns
else
    echo -e "${BOLD}${LIGHT_GREEN}[+] Installing massdns...${LIGHT_YELLOW}[ALREADY INSTALLED]${NORMAL}"
fi

if ! testcmd masscan; then
    echo -e "${BOLD}${LIGHT_GREEN}[+] Installing masscan...${NORMAL}"
    git clone https://github.com/robertdavidgraham/masscan
    cd masscan
    make -j >> $LOGFILE 2>&1
    sudo mv ./bin/masscan /usr/bin/
    cd ..
    rm -rf masscan
else
    echo -e "${BOLD}${LIGHT_GREEN}[+] Installing masscan...${LIGHT_YELLOW}[ALREADY INSTALLED]${NORMAL}"
fi

if [ ! -d "$TOOLS_DIR/seclists" ]; then
    echo -e "${BOLD}${LIGHT_GREEN}[+] Installing SecLists to $TOOLS_DIR...${NORMAL}"
    git clone https://github.com/danielmiessler/SecLists.git $TOOLS_DIR/seclists
else
    echo -e "${BOLD}${LIGHT_GREEN}[+] Installing SecLists to $TOOLS_DIR...${LIGHT_YELLOW}[ALREADY INSTALLED]${NORMAL}"
fi

if [ ! -d "$TOOLS_DIR/wordlists/commonspeak2" ]; then
    echo -e "${BOLD}${LIGHT_GREEN}[+] Installing Commonspeak2 wordlists to $TOOLS_DIR...${NORMAL}"
    git clone https://github.com/assetnote/commonspeak2-wordlists $TOOLS_DIR/wordlists/commonspeak2
else
    echo -e "${BOLD}${LIGHT_GREEN}[+] Installing Commonspeak2 wordlists to $TOOLS_DIR/wordlists...${LIGHT_YELLOW}[ALREADY INSTALLED]${NORMAL}"
fi

if [ ! -d "$TOOLS_DIR/wordlists/api_wordlists" ]; then
    echo -e "${BOLD}${LIGHT_GREEN}[+] Installing api_wordlist to $TOOLS_DIR/wordlists...${NORMAL}"
    git clone https://github.com/chrislockard/api_wordlist $TOOLS_DIR/wordlists/api_wordlists
else
    echo -e "${BOLD}${LIGHT_GREEN}[+] Installing api_wordlist to $TOOLS_DIR/wordlists...${LIGHT_YELLOW}[ALREADY INSTALLED]${NORMAL}"
fi

if [ ! -d "$TOOLS_DIR/wordlists/fuzz.txt" ]; then
    echo -e "${BOLD}${LIGHT_GREEN}[+] Installing Bo0oM/fuzz.txt to $TOOLS_DIR/wordlists...${NORMAL}"
    git clone https://github.com/Bo0oM/fuzz.txt.git $TOOLS_DIR/wordlists/fuzz.txt
else
    echo -e "${BOLD}${LIGHT_GREEN}[+] Installing Bo0oM/fuzz.txt to $TOOLS_DIR/wordlists...${LIGHT_YELLOW}[ALREADY INSTALLED]${NORMAL}"
fi

if [ ! -d "$TOOLS_DIR/wordlists/fuzz.txt" ]; then
    echo -e "${BOLD}${LIGHT_GREEN}[+] Installing Bo0oM/fuzz.txt to $TOOLS_DIR/wordlists...${NORMAL}"
    git clone https://github.com/Bo0oM/fuzz.txt.git $TOOLS_DIR/wordlists/fuzz.txt
else
    echo -e "${BOLD}${LIGHT_GREEN}[+] Installing Bo0oM/fuzz.txt to $TOOLS_DIR/wordlists...${LIGHT_YELLOW}[ALREADY INSTALLED]${NORMAL}"
fi

if [ ! -d "$TOOLS_DIR/wordlists/Probable-Wordlists" ]; then
    echo -e "${BOLD}${LIGHT_GREEN}[+] Installing Probable-Wordlists to $TOOLS_DIR/wordlists...${NORMAL}"
    git clone https://github.com/berzerk0/Probable-Wordlists $TOOLS_DIR/wordlists/Probable-Wordlists
else
    echo -e "${BOLD}${LIGHT_GREEN}[+] Installing Probable-Wordlists to $TOOLS_DIR/wordlists...${LIGHT_YELLOW}[ALREADY INSTALLED]${NORMAL}"
fi

if [ ! -d "$TOOLS_DIR/wordlists/fuzzdb" ]; then
    echo -e "${BOLD}${LIGHT_GREEN}[+] Installing fuzzdb to $TOOLS_DIR/wordlists...${NORMAL}"
    git clone https://github.com/fuzzdb-project/fuzzdb $TOOLS_DIR/wordlists/fuzzdb
else
    echo -e "${BOLD}${LIGHT_GREEN}[+] Installing fuzzdb to $TOOLS_DIR/wordlists...${LIGHT_YELLOW}[ALREADY INSTALLED]${NORMAL}"
fi

if ! testcmd nmap; then

    echo -e "${BOLD}${LIGHT_GREEN}[+] Installing nmap...${NORMAL}"
    git clone https://github.com/nmap/nmap.git
    cd nmap
    echo -e "${LIGHT_CYAN}[!] Configuring nmap...${NORMAL}"
    sh ./configure
    echo -e "${LIGHT_CYAN}[!] Running make nmap...${NORMAL}"
    make
    echo -e "${LIGHT_CYAN}[!] Runing make install nmap...${NORMAL}"
    sudo make install
    cd ..
    rm -rf nmap
else
    echo -e "${BOLD}${LIGHT_GREEN}[+] Installing nmap...${LIGHT_YELLOW}[ALREADY INSTALLED]${NORMAL}"
fi

echo -e "${LIGHT_CYAN}\n[+] Looks like we are done? You may need to run source ~/.profile in order for some programs to take effect${NORMAL}"

echo -e "\n========================================="
echo -e "${BOLD}${LIGHT_YELLOW}~ BountyStrike-sh installation complete ~${NORMAL}"
echo -e "${BOLD}${LIGHT_GREEN}~ Enjoy your bounties ~${NORMAL}\n"
