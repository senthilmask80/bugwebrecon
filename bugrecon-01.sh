#!/bin/bash

STARTIME=$(date +%s)
LOGFILE="install.log"

testcmd () {
    command -v "$1" >/dev/null
}

# Wipe log file on every install
echo "" > $LOGFILE

installprerequist() (
   sudo apt-get -y update
   sudo apt-get -y upgrade
   package=
      libcurl4-openssl-dev libcurl4-openssl-dev libxml2 libxml2-dev libxslt1-dev ruby-dev build-essential libgmp-dev zlib1g-dev \
      libssl-dev build-essential libssl-dev libffi-dev python3-dev python3-setuptools libldns-dev python3-pip python-dnspython \
      jq git rename xargs screen
}

#create a directory for tools
mkdir /opt/tools
TOOLS_DIR="/opt/tools"
echo "done"

#install go
if [[ -z "$GOPATH" ]];then
echo "It looks like go is not installed, would you like to install it now"
PS3="Please select an option : "
choices=("yes" "no")
select choice in "${choices[@]}"; do
        case $choice in
                yes)

					echo "Installing Golang"
					wget https://dl.google.com/go/go1.17.6.linux-amd64.tar.gz
					sudo tar -xvf go1.17.6.linux-amd64.tar.gz
					sudo mv go /usr/local
					export GOROOT=/usr/local/go
					export GOPATH=$HOME/go
					export PATH=$GOPATH/bin:$GOROOT/bin:$PATH
					echo 'export GOROOT=/usr/local/go' >> ~/.bash_profile
					echo 'export GOPATH=$HOME/go'	>> ~/.bash_profile			
					echo 'export PATH=$GOPATH/bin:$GOROOT/bin:$PATH' >> ~/.bash_profile	
					source ~/.bash_profile
					sleep 1
					break
					;;
				no)
					echo "Please install go and rerun this script"
					echo "Aborting installation..."
					exit 1
					;;
	esac	
done
fi


installDocker() {
    sudo apt-get update
    sudo apt-get install -y apt-transport-https ca-certificates curl gnupg-agent software-properties-common vim git python-pip build-essential libbz2-dev zlib1g-dev libncurses5-dev libgdbm-dev libnss3-dev libssl-dev libreadline-dev libffi-dev libsqlite3-dev ntp
    sudo systemctl enable ntp
    curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
    sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
    sudo add-apt-repository -y ppa:deadsnakes/ppa
    sudo apt-get update
    sudo pip install --upgrade pip
    sudo pip install docker-compose
    sudo apt-get -y install docker-ce docker-ce-cli containerd.io
}

installPython(){
    PYTHON_VERSION="3.7.6"
    PYTHON_FILE="Python-$PYTHON_VERSION.tgz"
    wget https://www.python.org/ftp/python/$PYTHON_VERSION/$PYTHON_FILE
    tar -xvf $PYTHON_FILE
    rm -rf $PYTHON_FILE
    cd Python-$PYTHON_VERSION
    ./configure
    make -j 1
    sudo make altinstall
    cd ..
    sudo rm -rf Python-$PYTHON_VERSION
}

installRuby(){
    wget https://cache.ruby-lang.org/pub/ruby/2.7/ruby-2.7.0.tar.gz
    gunzip -d ruby-2.7.0.tar.gz
    tar -xvf ruby-2.7.0.tar
    cd ruby-2.7.0/
    ./configure
    make
    sudo make install
    cd ..
    rm -rf ruby-2.7.0
}

installMullvadVPN(){
    MULLVADVPN_VERSION="2019.10_amd64"
    wget "https://mullvad.net/media/app/MullvadVPN-$MULLVADVPN_VERSION.deb"
    sudo dpkg -i "MullvadVPN-$MULLVADVPN_VERSION.deb"
    rm "MullvadVPN-$MULLVADVPN_VERSION.deb"
}

if ! testcmd docker; then
    echo -e "${BOLD}${LIGHT_GREEN}[+] Installing Docker-CE...${NORMAL}"
    installDocker
else
    echo -e "${BOLD}${LIGHT_GREEN}[+] Installing Docker-CE...${LIGHT_YELLOW}[ALREADY INSTALLED]${NORMAL}"
fi

if ! testcmd python3.7; then
    echo -e "${BOLD}${LIGHT_GREEN}[+] Installing Python-3.7.6...${NORMAL}"
    installPython
else
    echo -e "${BOLD}${LIGHT_GREEN}[+] Installing Python-3.7.6...${LIGHT_YELLOW}[ALREADY INSTALLED]${NORMAL}"
fi

if ! testcmd ruby; then
    echo -e "${BOLD}${LIGHT_GREEN}[+] Installing Ruby-2.6.3...${NORMAL}"
    installRuby
else
    echo -e "${BOLD}${LIGHT_GREEN}[+] Installing Ruby-2.6.3...${LIGHT_YELLOW}[ALREADY INSTALLED]${NORMAL}"
fi

if ! testcmd npm; then
    echo -e "${BOLD}${LIGHT_GREEN}[+] Installing npm...${NORMAL}"
    bash nodejs.sh
else
    echo -e "${BOLD}${LIGHT_GREEN}[+] Installing npm...${LIGHT_YELLOW}[ALREADY INSTALLED]${NORMAL}"
fi

if ! testcmd mullvad; then
    echo -e "${BOLD}${LIGHT_GREEN}[+] Installing MullvadVPN...${NORMAL}"
    installMullvadVPN
else
    echo -e "${BOLD}${LIGHT_GREEN}[+] Installing MullvadVPN...${LIGHT_YELLOW}[ALREADY INSTALLED]${NORMAL}"
fi

if [ ! -x /usr/local/go/bin/go ]; then

    echo -e "${BOLD}${LIGHT_GREEN}[+] Installing golang...${NORMAL}"
    wget https://dl.google.com/go/go1.13.5.linux-amd64.tar.gz -O golang-13.5.tar.gz
    sudo tar -C /usr/local -xzf golang-13.5.tar.gz
    rm -rf golang-13.5.tar.gz

    echo -e "${BOLD}${LIGHT_GREEN}[+] Adding Go to PATH...${NORMAL}"
    echo "export GOPATH=$HOME/go" >> "$HOME/.profile"
    echo "export PATH=$HOME/go/bin:/usr/local/go/bin:$PATH" >> "$HOME/.profile"
    source "$HOME/.profile"
    echo "[!] Done, run \"source $HOME/.profile\" when install is done."

fi

if ! testcmd /usr/local/go/bin/go; then
    echo -e "${RED}[-] Go was not installed :/${NORMAL}"
    echo -e "${RED}[-] Exiting${NORMAL}"
    exit
fi

if ! testcmd amass; then
    export GO111MODULE=on
    echo -e "${BOLD}${LIGHT_GREEN}[+] Installing amass...${NORMAL}"
    go get -u github.com/OWASP/Amass/v3/...
else
    echo -e "${BOLD}${LIGHT_GREEN}[+] Installing amass...${LIGHT_YELLOW}[ALREADY INSTALLED]${NORMAL}"
fi

if ! testcmd subfinder; then
    echo -e "${BOLD}${LIGHT_GREEN}[+] Installing subfinder...${NORMAL}"
    go get github.com/projectdiscovery/subfinder/cmd/subfinder
else
    echo -e "${BOLD}${LIGHT_GREEN}[+] Installing subfinder...${LIGHT_YELLOW}[ALREADY INSTALLED]${NORMAL}"
fi

if ! testcmd gobuster; then
    echo -e "${BOLD}${LIGHT_GREEN}[+] Installing gobuster...${NORMAL}"
    go get github.com/OJ/gobuster
else
    echo -e "${BOLD}${LIGHT_GREEN}[+] Installing gobuster...${LIGHT_YELLOW}[ALREADY INSTALLED]${NORMAL}"
fi

if ! testcmd waybackurls; then
    echo -e "${BOLD}${LIGHT_GREEN}[+] Installing waybackurls...${NORMAL}"
    go get -u github.com/tomnomnom/waybackurls
else
    echo -e "${BOLD}${LIGHT_GREEN}[+] Installing waybackurls...${LIGHT_YELLOW}[ALREADY INSTALLED]${NORMAL}"
fi

if ! testcmd waybackunifier; then
    echo -e "${BOLD}${LIGHT_GREEN}[+] Installing waybackunifier...${NORMAL}"
    go get github.com/mhmdiaa/waybackunifier
else
    echo -e "${BOLD}${LIGHT_GREEN}[+] Installing waybackunifier...${LIGHT_YELLOW}[ALREADY INSTALLED]${NORMAL}"
fi

if ! testcmd fff; then
    echo -e "${BOLD}${LIGHT_GREEN}[+] Installing fff...${NORMAL}"
    go get -u github.com/tomnomnom/hacks/fff
else
    echo -e "${BOLD}${LIGHT_GREEN}[+] Installing fff...${LIGHT_YELLOW}[ALREADY INSTALLED]${NORMAL}"
fi

if ! testcmd httprobe; then
    echo -e "${BOLD}${LIGHT_GREEN}[+] Installing httprobe...${NORMAL}"
    go get -u github.com/tomnomnom/httprobe
else
    echo -e "${BOLD}${LIGHT_GREEN}[+] Installing httprobe...${LIGHT_YELLOW}[ALREADY INSTALLED]${NORMAL}"
fi

if ! testcmd meg; then
    echo -e "${BOLD}${LIGHT_GREEN}[+] Installing meg...${NORMAL}"
    go get -u github.com/tomnomnom/meg
else
    echo -e "${BOLD}${LIGHT_GREEN}[+] Installing meg...${LIGHT_YELLOW}[ALREADY INSTALLED]${NORMAL}"
fi

if ! testcmd unfurl; then
    echo -e "${BOLD}${LIGHT_GREEN}[+] Installing unfurl...${NORMAL}"
    go get -u github.com/tomnomnom/unfurl
else
    echo -e "${BOLD}${LIGHT_GREEN}[+] Installing unfurl...${LIGHT_YELLOW}[ALREADY INSTALLED]${NORMAL}"
fi

if ! testcmd filter-resolved; then
    echo -e "${BOLD}${LIGHT_GREEN}[+] Installing filter-resolved...${NORMAL}"
    go get -u github.com/tomnomnom/hacks/filter-resolved
else
    echo -e "${BOLD}${LIGHT_GREEN}[+] Installing filter-resolved...${LIGHT_YELLOW}[ALREADY INSTALLED]${NORMAL}"
fi

if ! testcmd gowitness; then
    echo -e "${BOLD}${LIGHT_GREEN}[+] Installing gowitness...${NORMAL}"
    go get -u github.com/sensepost/gowitness
else
    echo -e "${BOLD}${LIGHT_GREEN}[+] Installing gowitness...${LIGHT_YELLOW}[ALREADY INSTALLED]${NORMAL}"
fi

if ! testcmd getJS; then
    echo -e "${BOLD}${LIGHT_GREEN}[+] Installing GetJS...${NORMAL}"
    go get -u github.com/003random/getJS
else
    echo -e "${BOLD}${LIGHT_GREEN}[+] Installing GetJS...${LIGHT_YELLOW}[ALREADY INSTALLED]${NORMAL}"
fi

if ! testcmd subzy; then
    echo -e "${BOLD}${LIGHT_GREEN}[+] Installing Subzy...${NORMAL}"
    go get -u github.com/lukasikic/subzy
else
    echo -e "${BOLD}${LIGHT_GREEN}[+] Installing Subzy...${LIGHT_YELLOW}[ALREADY INSTALLED]${NORMAL}"
fi

if ! testcmd SubOver; then
    echo -e "${BOLD}${LIGHT_GREEN}[+] Installing SubOver...${NORMAL}"
    go get -u github.com/Ice3man543/SubOver
else
    echo -e "${BOLD}${LIGHT_GREEN}[+] Installing SubOver...${LIGHT_YELLOW}[ALREADY INSTALLED]${NORMAL}"
fi

if ! testcmd shhgit; then
    echo -e "${BOLD}${LIGHT_GREEN}[+] Installing Shhgit...${NORMAL}"
    go get github.com/eth0izzle/shhgit
else
    echo -e "${BOLD}${LIGHT_GREEN}[+] Installing Shhgit...${LIGHT_YELLOW}[ALREADY INSTALLED]${NORMAL}"
fi

if ! testcmd gitrob; then
    echo -e "${BOLD}${LIGHT_GREEN}[+] Installing gitrob...${NORMAL}"
    go get github.com/michenriksen/gitrob
else
    echo -e "${BOLD}${LIGHT_GREEN}[+] Installing gitrob...${LIGHT_YELLOW}[ALREADY INSTALLED]${NORMAL}"
fi

if ! testcmd ffuf; then
    echo -e "${BOLD}${LIGHT_GREEN}[+] Installing ffuf...${NORMAL}"
    go get github.com/ffuf/ffuf
else
    echo -e "${BOLD}${LIGHT_GREEN}[+] Installing ffuf...${LIGHT_YELLOW}[ALREADY INSTALLED]${NORMAL}"
fi

if ! testcmd unisub; then
    echo -e "${BOLD}${LIGHT_GREEN}[+] Installing unisub...${NORMAL}"
    go get -u github.com/tomnomnom/hacks/unisub
else
    echo -e "${BOLD}${LIGHT_GREEN}[+] Installing unisub...${LIGHT_YELLOW}[ALREADY INSTALLED]${NORMAL}"
fi

if ! testcmd aquatone; then
    echo -e "${BOLD}${LIGHT_GREEN}[+] Installing aquatone...${NORMAL}"
    AQUATONE="aquatone-1.7.0.zip"
    wget https://github.com/michenriksen/aquatone/releases/download/v1.7.0/aquatone_linux_amd64_1.7.0.zip -O $AQUATONE
    unzip $AQUATONE -x LICENSE.txt -x README.md
    sudo mv aquatone /usr/local/bin
    rm -rf $AQUATONE
fi
