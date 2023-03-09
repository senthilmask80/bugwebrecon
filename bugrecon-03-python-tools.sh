#!/bin/bash

echo -e "\n-----------------------------------------"
echo -e "${BOLD}${LIGHT_YELLOW}[~] Installing golang tools${NORMAL}"
echo "-----------------------------------------"

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

echo -e "\n-----------------------------------------"
echo -e "${BOLD}${LIGHT_YELLOW}[~] Installing python tools${NORMAL}"
echo "-----------------------------------------"


if ! testcmd dnsgen; then
    echo -e "${BOLD}${LIGHT_GREEN}[+] Installing dnsgen...${NORMAL}"
    python3.7 -m pip install dnsgen --user
else
    echo -e "${BOLD}${LIGHT_GREEN}[+] Installing dnsgen...${LIGHT_YELLOW}[ALREADY INSTALLED]${NORMAL}"
fi

if ! testcmd trufflehog; then
    echo -e "${BOLD}${LIGHT_GREEN}[+] Installing trufflehog...${NORMAL}"
    python3.7 -m pip install truffleHog --user
else
    echo -e "${BOLD}${LIGHT_GREEN}[+] Installing trufflehog...${LIGHT_YELLOW}[ALREADY INSTALLED]${NORMAL}"
fi

if ! testcmd scout; then
    echo -e "${BOLD}${LIGHT_GREEN}[+] Installing scoutsuite...${NORMAL}"
    python3.7 -m pip install scoutsuite --user
else
    echo -e "${BOLD}${LIGHT_GREEN}[+] Installing scoutsuite...${LIGHT_YELLOW}[ALREADY INSTALLED]${NORMAL}"
fi

if ! testcmd aws; then
    echo -e "${BOLD}${LIGHT_GREEN}[+] Installing awscli...${NORMAL}"
    python3.7 -m pip install awscli --user
else
    echo -e "${BOLD}${LIGHT_GREEN}[+] Installing awscli...${LIGHT_YELLOW}[ALREADY INSTALLED]${NORMAL}"
fi

if ! testcmd wafw00f; then
    echo -e "${BOLD}${LIGHT_GREEN}[+] Installing wafw00f...${NORMAL}"
    git clone https://github.com/EnableSecurity/wafw00f.git $TOOLS_DIR/wafw00f
    cd $TOOLS_DIR/wafw00f
    python3.7 setup.py install --user
    cd
else
    echo -e "${BOLD}${LIGHT_GREEN}[+] Installing wafw00f...${LIGHT_YELLOW}[ALREADY INSTALLED]${NORMAL}"
fi

if [ ! -d "$TOOLS_DIR/Corsy" ]; then
    echo -e "${BOLD}${LIGHT_GREEN}[+] Installing Corsy...${NORMAL}"
    git clone https://github.com/s0md3v/Corsy $TOOLS_DIR/Corsy
    cd "$TOOLS_DIR/Corsy"
    pip3.7 install -r requirements.txt --user
    cd
else
    echo -e "${BOLD}${LIGHT_GREEN}[+] Installing Corsy...${LIGHT_YELLOW}[ALREADY INSTALLED]${NORMAL}"
fi

if [ ! -d "$TOOLS_DIR/flumberboozle" ]; then
    echo -e "${BOLD}${LIGHT_GREEN}[+] Installing flumberboozle...${NORMAL}"
    git clone https://github.com/fellchase/flumberboozle $TOOLS_DIR/flumberboozle
else
    echo -e "${BOLD}${LIGHT_GREEN}[+] Installing flumberboozle...${LIGHT_YELLOW}[ALREADY INSTALLED]${NORMAL}"
fi

if [ ! -d "$TOOLS_DIR/bass" ]; then
    echo -e "${BOLD}${LIGHT_GREEN}[+] Installing bass...${NORMAL}"
    git clone https://github.com/Abss0x7tbh/bass $TOOLS_DIR/bass
else
    echo -e "${BOLD}${LIGHT_GREEN}[+] Installing bass...${LIGHT_YELLOW}[ALREADY INSTALLED]${NORMAL}"
fi

if [ ! -d "$TOOLS_DIR/dirsearch" ]; then
    echo -e "${BOLD}${LIGHT_GREEN}[+] Installing dirsearch...${NORMAL}"
    git clone https://github.com/maurosoria/dirsearch.git $TOOLS_DIR/dirsearch
else
    echo -e "${BOLD}${LIGHT_GREEN}[+] Installing dirsearch...${LIGHT_YELLOW}[ALREADY INSTALLED]${NORMAL}"
fi

if [ ! -d "$TOOLS_DIR/Injectus" ]; then
    echo -e "${BOLD}${LIGHT_GREEN}[+] Installing Injectus...${NORMAL}"
    git clone https://github.com/BountyStrike/Injectus $TOOLS_DIR/Injectus
    cd $TOOLS_DIR/Injectus
    pip3.7 install -r requirements.txt --user
    cd
else
    echo -e "${BOLD}${LIGHT_GREEN}[+] Installing Injectus...${LIGHT_YELLOW}[ALREADY INSTALLED]${NORMAL}"
fi
