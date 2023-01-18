#!/bin/sh

# deb http://security.ubuntu.com/ubuntu bionic-security main 

WORKING_DIR="$(cd "$(dirname "$0")" ; pwd -P)"
TOOLS_PATH="$WORKING_DIR/tools"
WORDLIST_PATH="$WORKING_DIR/wordlists"
RED="\033[1;31m"
GREEN="\033[1;32m"
BLUE="\033[1;36m"
RESET="\033[0m"

installBanner(){
    name=$1
    echo -e "${RED}[+] Installing $name...${RESET}"
}

update(){
    echo -e "${GREEN}\n--==[ Setting things up ]==--${RESET}"
    echo -e "${RED}[+] Updating...${RESET}"
    sudo apt-get update -y
    sudo apt-get upgrade -y
    sudo apt-get autoremove -y
    sudo apt clean
}

createDir(){
    echo -e "${RED}[+] Creating directories...${RESET}"
    mkdir -p $TOOLS_PATH $WORDLIST_PATH
    echo -e "${BLUE}[*] $TOOLS_PATH${RESET}"
    echo -e "${BLUE}[*] $WORDLIST_PATH\n${RESET}"
}


sudo apt-get install build-essential apt-transport-https software-properties-common gcc build-dep;
sudo apt-get install curl wget git git-all rename screen certbot gunzip zip unzip 7zip tar p7zip-full;
sudo apt-get install openssl openssh-server openssh-client parallel jq vim ctags tmux dtach dstat silversearcher-ag sslscan;
sudo apt-get install awscli macchanger secure-delete neofetch prips;
sudo apt-get install ruby ruby-dev ruby-full rubygems;
sudo apt-get install golang-1.18-go;
sudo apt-get install openjdk-11-headless openjre-11-headless;
sudo apt-get install rust-all pigz;
sudo apt-get install npm;
sudo apt-get install sqlite sqlite3 sqlite3-tools sqlitebrowser;
sudo apt-get install dnsmasq dnsmasq-base dnsproxy dnsutils dnsrecon dns2tcp dnscache;
sudo apt-get install -y make libssl-dev zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev;
sudo apt-get install llvm libncurses5-dev libncursesw5-dev xz-utils tk-dev libpcap-dev xsltproc libldns-dev;
sudo apt-get install dnsutils libcurl4-openssl-dev libxml2 libxml2-dev libxslt1-dev ibssl-dev libffi-dev;
sudo apt-get install lzma liblzma-dev libbz2-dev readline gnureadline;
sudo apt-get install python-is-python3 python3-pip python3-venv python3-virtualenv;
sudo apt-get install python3-dev python3-minimal python3-full;
sudo apt-get install python2.7-dev python2.7-minimal python2.7;
sudo apt-get install python3-setuptools python3-requests python3-wheel python3-wheel-whl;
sudo apt-get install pythonpy python3-poetry python3-poetry-core pipenv;
sudo apt-get install python3-tk python3-whois python3-dns python3-dnslib python3-dnspython python3-dnsq;
sudo apt-get install python3-httpx python3-httptools python3-parser python3-httpbin python3-httpcore;
sudo apt-get install python3-httplib2 python3-httpretty python3-args python3-argparse-manpage;
sudo apt-get install python3-aiodns python3-aiohttp python3-aiohttp python3-aiohttp-cors;
sudo apt-get install python3-aiohttp-proxy python3-aiohttp-security python3-aiohttp-session;
sudo apt-get install nmap tor torbrowser-launcher tor-geoipdb torsocks iptables iptables-persistent;
sudo apt-get install onionshare onioncircuits onionshare unbound proxychains proxychains4 proxycheck;
sudo apt-get install chromium-browser chromium-chromedriver libnet-ssleay-perl; 
sudo apt-get install masscan whatweb sublist3r gobuster nikto wafw00f medusa
sudo apt-get install 0install 0install-core;
sudo apt-get install libssl-dev libssh-dev libidn11-dev libpcre3-dev libgtk2.0-dev libmysqlclient-dev libpq-dev libsvn-dev
sudo apt-get install firebird-dev libmemcached-dev libgpg-error-dev libgcrypt11-dev libgcrypt20-dev
sudo apt-get install bison fail2ban firebird-dev flex grc libgcrypt11-dev_1.5.4-3+really1.8.1-4ubuntu1.2_amd64.deb
sudo apt-get install libgcrypt20-dev libgpg-error-dev libgtk2.0-dev libidn11-dev libmemcached-dev libmysqlclient-dev
sudo apt-get install libpcap-dev libpcre3-dev libpq-dev libssh-dev libssl-dev libsvn-dev 
sudo apt-get install net-tools ohmyzsh vim zsh zsh-autosuggestions zsh-syntax-highlighting
sudo apt-get install libcurl4-openssl-dev libxml2 libxml2-dev libxslt1-dev libgmp-dev zlib1g-dev libssl-dev libffi-dev libldns-dev rename findutils
sudo apt-get install exploitdb exploitdb-bin-sploits exploitdb-papers


pip install pipreqs;
pip install pypi-install;
pip install feedparser;
pip install awscli;
pip install google;
pip3 install fierce;
pip install pyopenssl;
pip3 install corscanner;
pip install "urllib3[secure]"
pip install mmh3;
pip install aort;
pip install wafw00f;
pip install aiodnsbrute;
pip3 install arjun;
pip3 install dnsgen;
pip3 install colored
pip3 install tldextract
pip install termcolor
pip install py-altdns
pip3 install emailfinder
pip install --upgrade sslyze


npm i -g wappalyzer wscat;
npm install -g grunt-cli

gem install wpscan
gem install evil-proxy


phantomjs

mkdir ~/.gf
mkdir ~/Tools;
mkdir ~/Recon;
dir=~/Tools;
go install github.com/Ice3man543/SubOver@latest;
go install github.com/tomnomnom/gf@latest;
go install github.com/tomnomnom/assetfinder@latest;
go install github.com/projectdiscovery/naabu/v2/cmd/naabu@latest;
go install github.com/tomnomnom/hacks/waybackurls@latest;
go install github.com/lukasikic/subzy@latest;
go install github.com/devanshbatham/gorecon@latest;
go get "github.com/devanshbatham/gorecon";
go install github.com/fatih/color@latest;
go get "github.com/fatih/color";
go install github.com/likexian/whois-go@latest;
go get "github.com/likexian/whois-go";
go install github.com/gocolly/colly@latest";
go get "github.com/gocolly/colly";


go install github.com/projectdiscovery/nuclei/v2/cmd/nuclei@latest;
git clone https://github.com/projectdiscovery/nuclei-templates $dir/nuclei-templates;
go install github.com/haccer/subjack@latest;
go install github.com/projectdiscovery/subfinder/v2/cmd/subfinder@latest;
go install github.com/projectdiscovery/chaos-client/cmd/chaos@latest;
go install github.com/hahwul/dalfox@latest;
go install github.com/lc/gau@latest;
go install github.com/lc/subjs@latest;
go install github.com/hakluke/hakcheckurl@latest;
go install github.com/hakluke/hakrawler@latest;
go install github.com/hakluke/hakrevdns@latest;
go install github.com/projectdiscovery/httpx/cmd/httpx@latest;
git clone https://github.com/blechschmidt/massdns $dir/massdns;
git clone https://github.com/devanshbatham/FavFreak $dir/FavFreak;
git clone https://github.com/GerbenJavado/LinkFinder $dir/LinkFinder;
git clone https://github.com/m4ll0k/SecretFinder $dir/SecretFinder;
git clone https://github.com/devanshbatham/ParamSpider $dir/ParamSpider;
go install github.com/projectdiscovery/dnsprobe@latest;
git clone https://github.com/maurosoria/dirsearch $dir/dirsearch;
git clone https://github.com/ozguralp/gmapsapiscanner $dir/gmapsapiscanner;
go install github.com/projectdiscovery/shuffledns/cmd/shuffledns@latest;
git clone https://github.com/1ndianl33t/Gf-Patterns $dir/Gf-Patterns;
pip3 install corscanner
pip3 install -r ~/Tools/*/requirements.txt;
mv $dir/Gf-Patterns/*.json /root/.gf/;
rm -r $dir/Gf-Patterns;
git clone https://github.com/KathanP19/JSFScan.sh $dir/JSFScan.sh;
mv arsenal ~/arsenal;
cd ~/arsenal;
chmod +x *.sh;
cd $dir/massdns; make;
cp $dir/massdns/bin/massdns /usr/bin/;
cd ~/.gf; wget https://raw.githubusercontent.com/devanshbatham/ParamSpider/master/gf_profiles/potential.json;
cd ~/go/bin; wget https://raw.githubusercontent.com/Ice3man543/SubOver/master/providers.json;
cd ~/Tools; wget https://gist.githubusercontent.com/KathanP19/d2cda2f99c0b60d64b76ee6039b37e47/raw/eb105a4de06502b2732df9d682c61189c3703685/jsvar.sh;

echo "PATH=${PATH}:~/.local/bin" >> ~/.bashrc

ulimit -n 16384

##########################Sublister##########################

echo "Installing Sublister"
git clone https://github.com/aboul3la/Sublist3r.git
cd Sublist3r*
sudo pip install -r requirements.txt
echo "Sublist3r Done."

##########################Knock##########################

echo "Installing Knock"
cd ..
git clone https://github.com/guelfoweb/knock.git
cd knock/knockpy
echo "Enter Your Virustotal API_key"
read knockVTapi
echo '{
        "virustotal": "'$knockVTapi'"
}' > config.json

cd ..
sudo python setup.py install
echo "Done setting UP the Knock"

##########################Subfinder##########################

echo "Installing Subfinder"
cd ..
go get github.com/subfinder/subfinder
wget "https://github.com/assetnote/commonspeak2-wordlists/raw/master/subdomains/subdomains.txt"
mv subdomains.txt my.txt
git clone https://github.com/subfinder/subfinder.git
cd subfinder
go build
echo -e \n\n "${RED}Subfinder Done (Note:- Dont forget to comfigure the api key by \n ./subfinder --set-config VirustotalAPIKey=0x41414141 or \n see the full documentatio here https://github.com/subfinder/subfinder#post-installation-instructions${NC}"
echo "Subfinder Done"

##########################Censys##########################

echo "Installing Censys"
cd ..
git clone https://github.com/appsecco/bugcrowd-levelup-subdomain-enumeration.git
echo "Censys Done"

##########################Amass##########################

echo "Installing Amass"
go get -u github.com/OWASP/Amass/...
echo "Enter the Directory where go/bin/ is installed"
echo "For Example root/go/bin/amass"
cd ..
read dir
mv $dir Tools/
echo "Amass Done"

##########################AltDNS##########################

echo "Installing AltDNS"
cd Tools/
git clone https://github.com/infosec-au/altdns.git
cd altdns
pip install -r requirements.txt
echo "AltDNS Done"

##########################NMAP##########################

echo "Installing NMAP"
cd ..
sudo apt-get install nmap
echo "NMAP Done"

##########################MassDNS##########################

echo "Installing MassDNS"
git clone https://github.com/blechschmidt/massdns.git
cd massdns
wget https://gist.githubusercontent.com/jhaddix/86a06c5dc309d08580a018c66354a056/raw/f58e82c9abfa46a932eb92edbe6b18214141439b/all.txt
make
echo "MassDNS Done"

##########################EyeWitness##########################

echo "Installing EyeWitness"
cd ..
git clone https://github.com/FortyNorthSecurity/EyeWitness.git
echo "EyeWitness Done"

##########################MassScan##########################

echo "Installing MassScan"
git clone https://github.com/robertdavidgraham/masscan
cd masscan
make
echo "MassScan Done"

##########################CTFR##########################

echo "Installing CTFR"
cd ..
git clone https://github.com/UnaPibaGeek/ctfr.git
cd ctfr
pip3 install -r requirements.txt
echo "CTFR Done"

##########################Aquatone##########################

echo "Installing Aquatone"
cd ..
gem install aquatone
echo "Aquatone Done"

##########################Sublert##########################

echo "Installing SUblert"
git clone https://github.com/yassineaboukir/sublert.git && cd sublert
sudo pip install -r requirements.txt
cd ..

##########################Dirsearch##########################

echo "Installing Dirsearch"
git clone https://github.com/maurosoria/dirsearch.git
echo "Dirsearch Done"

##########################Censys##########################

echo "Installing Censys"
git clone https://github.com/christophetd/censys-subdomain-finder.git
cd censys-subdomain-finder
pip install -r requirements.txt
echo "Censys Done"

##########################FDNS##########################

echo "Downloading FDNS dataset"
cd ..
wget https://opendata.rapid7.com/sonar.fdns_v2/2019-10-27-1572199582-fdns_cname.json.gz

##########################Linkfinder##########################

echo "Installing LinkFinder"
git clone https://github.com/GerbenJavado/LinkFinder.git
cd LinkFinder
python setup.py install
echo "Linkfinder Done"

##########################Jsparser##########################

echo "Installing Jsparser"
cd ..
git clone https://github.com/nahamsec/JSParser.git
python setup.py install
echo "JSParser Done"

##########################SAN##########################

echo "Installing San"
git clone https://github.com/SilverPoision/San.git
echo "San Done"

##########################Vhost##########################

echo "Vhost"
git clone https://github.com/jobertabma/virtual-host-discovery.git
cd virtual-host-discovery
wget https://github.com/SilverPoision/San/blob/master/word.txt
cd ..
echo "Vhost Done"
echo -e \n\n "${RED}Once again don't forget to set the api keys for subfinder from here https://github.com/subfinder/subfinder#post-installation-instructions and also setting the AWS CLI creds. ${NC}"

setupTools(){
    installBanner "setup tools"
    INSTALL_PKGS="git python python-pip python3 python3-pip libldns-dev gcc g++ make libpcap-dev xsltproc curl"
    for i in $INSTALL_PKGS; do
        sudo apt-get install -y $i
    done

    if [ "ubuntu" == "$(cat /etc/os-release | grep ^ID= | cut -d '=' -f2)" ]; then
        sudo add-apt-repository ppa:canonical-chromium-builds/stage -y
        sudo apt update -y
        sudo apt install -y chromium-browser
    else
        sudo apt install -y chromium
    fi
}


subEnumTools(){
    echo -e "${GREEN}\n--==[ Installing subdomain enum tools ]==--${RESET}"
    installBanner "Amass"
    if [ -e ~/go/bin/amass ]; then
        echo -e "${BLUE}[!] Amass already exists...\n${RESET}"
    else 
        go get -u github.com/OWASP/Amass/...
    fi
    
    installBanner "subfinder"
    if [ -e ~/go/bin/subfinder ]; then
        echo -e "${BLUE}[!] Subfinder already exists...\n${RESET}"
    else 
        go get -u github.com/subfinder/subfinder
        echo -e "${RED}[+] Setting up API keys for subfinder...${RESET}"
        # Set your API keys here
        ~/go/bin/subfinder --set-config VirustotalAPIKey=<API-KEY-HERE>
        ~/go/bin/subfinder --set-config PassivetotalUsername=<API-KEY-HERE>,PassivetotalKey=<API-KEY-HERE>
        ~/go/bin/subfinder --set-config SecurityTrailsKey=<API-KEY-HERE>
        ~/go/bin/subfinder --set-config RiddlerEmail=<API-KEY-HERE>,RiddlerPassword=<API-KEY-HERE>
        ~/go/bin/subfinder --set-config CensysUsername=<API-KEY-HERE>,CensysSecret=<API-KEY-HERE>
        ~/go/bin/subfinder --set-config ShodanAPIKey=<API-KEY-HERE>
    fi

    installBanner "subjack"
    if [ -e ~/go/bin/subjack ]; then
        echo -e "${BLUE}[!] Subjack already exists...${RESET}"
    else 
        go get -u github.com/haccer/subjack
    fi
}

corsTools(){
    echo -e "${GREEN}\n--==[ Installing CORS config checker ]==--${RESET}"
    installBanner "CORScanner"
    if [ "$(ls -A $TOOLS_PATH/CORScanner 2>/dev/null)" ]; then
        echo -e "${BLUE}[!] CORScanner already exists...\n${RESET}"
    else
        cd $TOOLS_PATH
        git clone https://github.com/chenjj/CORScanner.git
        cd CORScanner
        sudo pip install -r requirements.txt
        cd $WORKING_DIR
    fi
}


ipEnumTools(){ 
    echo -e "${GREEN}\n--==[ Installing IP enum tools ]==--${RESET}"
    installBanner "massdns"
    if [ -e $TOOLS_PATH/massdns/bin/massdns 2>/dev/null ]; then
        echo -e "${BLUE}[!] Massdns already installed...\n${RESET}"
    else
        cd $TOOLS_PATH
        git clone https://github.com/blechschmidt/massdns
        cd massdns
        make -j
        cd $WORKING_DIR
    fi
}


portScanTools(){
    echo -e "${GREEN}\n--==[ Installing port scanners ]==--${RESET}"
    installBanner "masscan"
    if [ -e $TOOLS_PATH/masscan/bin/masscan 2>/dev/null ]; then
        echo -e "${BLUE}[!] Masscan already installed...\n${RESET}"
    else
        cd $TOOLS_PATH
        git clone https://github.com/robertdavidgraham/masscan
        cd masscan
        make -j
        cd $WORKING_DIR
    fi

    LATEST_NMAP="$(wget -qO- https://nmap.org/dist/ | grep -oP 'nmap-([0-9\.]+)\.tar\.bz2'| tail -n 1 | grep -oP 'nmap-[0-9\.]+' | grep -oP '[0-9\.]+' | head -c -2)"
    if [ ! -x "$(command -v nmap)" ]; then
        installBanner "nmap"
        wget https://nmap.org/dist/nmap-$LATEST_NMAP.tar.bz2
        bzip2 -cd nmap-$LATEST_NMAP.tar.bz2 | tar xvf -
        cd nmap-$LATEST_NMAP
        ./configure
        make -j
        sudo make -j install
        cd $WORKING_DIR
        rm -rf nmap-$LATEST_NMAP*
    else 
        if [ "$LATEST_NMAP" == "$(nmap -V | grep version | cut -d " " -f 3)" ]; then
            echo -e "${BLUE}[!] Latest version of Nmap already installed...${RESET}"
        else
            echo -e "${BLUE}[!] Upgrading to the latest version of Nmap...${RESET}"
            wget https://nmap.org/dist/nmap-$LATEST_NMAP.tar.bz2
            bzip2 -cd nmap-$LATEST_NMAP.tar.bz2 | tar xvf -
            cd nmap-$LATEST_NMAP
            ./configure
            make -j
            sudo make -j install
            cd $WORKING_DIR
            rm -rf nmap-$LATEST_NMAP*
        fi 
    fi
}


visualReconTools(){
    echo -e "${GREEN}\n--==[ Installing visual recon tools ]==--${RESET}"
    installBanner "aquatone"
    if [ -e ~/go/bin/aquatone ]; then
        echo -e "${BLUE}[!] Aquatone already exists...\n${RESET}"
    else 
        go get -u github.com/michenriksen/aquatone
    fi
}


dirBruteTools(){
    echo -e "${GREEN}\n--==[ Installing content discovery tools ]==--${RESET}"
    installBanner "dirsearch"
    if [ "$(ls -A $TOOLS_PATH/dirsearch 2>/dev/null)" ]; then
        echo -e "${BLUE}[!] Dirsearch already exists...\n${RESET}"
    else
        cd $TOOLS_PATH
        git clone https://github.com/maurosoria/dirsearch
        cd $WORKING_DIR
    fi
}


otherTools(){
    echo -e "${GREEN}\n--==[ Downloading wordlists & other tools]==--${RESET}"
    if [ -e $WORDLIST_PATH/dns_all.txt 2>/dev/null ] && [ -e $WORDLIST_PATH/raft-large-words.txt 2>/dev/null ]; then
        echo -e "${BLUE}[!] Wordlists already downloaded...\n${RESET}"
    else
        echo -e "${RED}[+] Downloading wordlists...${RESET}"
        wget -O $WORDLIST_PATH/dns_all.txt https://gist.githubusercontent.com/jhaddix/86a06c5dc309d08580a018c66354a056/raw/96f4e51d96b2203f19f6381c8c545b278eaa0837/all.txt
        wget -O $WORDLIST_PATH/raft-large-words.txt https://raw.githubusercontent.com/danielmiessler/SecLists/master/Discovery/Web-Content/raft-large-words.txt
    fi

    if [ -e $TOOLS_PATH/nmap-bootstrap.xsl 2>/dev/null ]; then
        echo -e "${BLUE}[!] Nmap-bootstrap.xsl already downloaded...\n${RESET}"
    else
        echo -e "${RED}[+] Downloading nmap-bootstrap-xsl...${RESET}"
        wget -O $TOOLS_PATH/nmap-bootstrap.xsl https://github.com/honze-net/nmap-bootstrap-xsl/raw/master/nmap-bootstrap.xsl
    fi
}


# Main function
update
createDir
setupTools
subEnumTools
corsTools
ipEnumTools
portScanTools
visualReconTools
dirBruteTools
otherTools

echo -e "${GREEN}--==[ DONE ]==--${RESET}"

function install_go_tools() {
		source $HOME/.profile;
		echo -e "$GREEN""[+] Installing Go tools from Github.""$NC";
		sleep 1;
		echo -e "$GREEN""[+] Installing subfinder from Github.""$NC";
		go get -u github.com/subfinder/subfinder;
		echo -e "$GREEN""[+] Installing subjack from Github.""$NC";
		go get -u github.com/haccer/subjack;
		echo -e "$GREEN""[+] Installing ffuf from Github.""$NC";
		go get -u github.com/ffuf/ffuf;
		echo -e "$GREEN""[+] Installing gobuster from Github.""$NC";
		go get -u github.com/OJ/gobuster;
		# echo -e "$GREEN""[+] Installing inception from Github.""$NC";
		# go get -u github.com/proabiral/inception;
		echo -e "$GREEN""[+] Installing waybackurls from Github.""$NC";
		go get -u github.com/tomnomnom/waybackurls;
		echo -e "$GREEN""[+] Installing goaltdns from Github.""$NC";
		go get -u github.com/subfinder/goaltdns;
		echo -e "$GREEN""[+] Installing rescope from Github.""$NC";
        go get -u github.com/root4loot/rescope;
		echo -e "$GREEN""[+] Installing httprobe from Github.""$NC";
		go get -u github.com/tomnomnom/httprobe;
}

function install_go() {
		if [[ -e /usr/local/go/bin/go ]]; then
				echo -e "$GREEN""[i] Go is already installed, skipping installation.""$NC";
				return;
		fi
		echo -e "$GREEN""[+] Installing Go 1.12 from golang.org.""$NC";
		wget -nv https://dl.google.com/go/go1.12.linux-amd64.tar.gz;
		sudo tar -C /usr/local -xzf go1.12.linux-amd64.tar.gz;
		echo "export PATH=$PATH:/usr/local/go/bin:$HOME/go/bin:" >> "$HOME"/.profile;
		echo "export GOPATH=$HOME/go" >> "$HOME"/.profile;
		source "$HOME"/.profile;
		rm -rf go1.12.linux-amd64.tar.gz;
}

function install {
  which $1 &> /dev/null

  if [ $? -ne 0 ]; then
    echo "Installing: ${1}..."
    apt-get install $1
  else
    echo "Already installed: ${1}"
  fi
}

install vim
install ctags
install tmux
install dtach
install dstat
install nmap
install silversearcher-ag


curl https://raw.githubusercontent.com/rapid7/metasploit-omnibus/master/config/templates/metasploit-framework-wrappers/msfupdate.erb > msfinstall && \
  chmod 755 msfinstall && \
  ./msfinstall
  

