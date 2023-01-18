#! /bin/bash

# https://github.com/tomnomnom?tab=repositories
# Pending fff, gf, 
wget https://github.com/tomnomnom/assetfinder/releases/download/v0.1.1/assetfinder-linux-amd64-0.1.1.tgz
wget https://github.com/tomnomnom/unfurl/releases/download/v0.4.3/unfurl-linux-amd64-0.4.3.tgz
wget https://github.com/tomnomnom/qsreplace/releases/download/v0.0.3/qsreplace-linux-amd64-0.0.3.tgz
wget https://github.com/tomnomnom/httprobe/releases/download/v0.2/httprobe-linux-amd64-0.2.tgz
wget https://github.com/tomnomnom/waybackurls/releases/download/v0.1.0/waybackurls-linux-amd64-0.1.0.tgz
wget https://github.com/tomnomnom/meg/releases/download/v0.3.0/meg-linux-amd64-0.3.0.tgz
wget https://github.com/tomnomnom/gron/releases/download/v0.7.1/gron-linux-amd64-0.7.1.tgz
wget https://github.com/tomnomnom/anew/releases/download/v0.1.1/anew-linux-amd64-0.1.1.tgz
wget https://github.com/tomnomnom/concurl/releases/download/v0.1.0/concurl-linux-amd64-0.1.0.tgz
wget https://github.com/tomnomnom/comb/releases/download/v0.1.1/comb-linux-amd64-0.1.1.tgz

# https://github.com/projectdiscovery/?tab=repositories
wget https://github.com/projectdiscovery/naabu/releases/download/v2.1.1/naabu_2.1.1_linux_amd64.zip;
wget https://github.com/projectdiscovery/nuclei/releases/download/v2.8.7/nuclei_2.8.7_linux_amd64.zip;
wget https://github.com/projectdiscovery/katana/releases/download/v0.0.3/katana_0.0.3_linux_amd64.zip;
wget https://github.com/projectdiscovery/notify/releases/download/v1.0.4/notify_1.0.4_linux_amd64.zip;
wget https://github.com/projectdiscovery/mapcidr/releases/download/v1.0.3/mapcidr_1.0.3_linux_amd64.tar.gz;
wget https://github.com/projectdiscovery/shuffledns/releases/download/v1.0.8/shuffledns_1.0.8_linux_amd64.zip;
wget https://github.com/projectdiscovery/asnmap/releases/download/v0.0.1/asnmap_0.0.1_linux_amd64.tar.gz;
wget https://github.com/projectdiscovery/openrisk/releases/download/v0.0.1/openrisk_0.0.1_linux_amd64.zip;
wget https://github.com/projectdiscovery/uncover/releases/download/v1.0.2/uncover_1.0.2_linux_amd64.zip;
wget https://github.com/projectdiscovery/subfinder/releases/download/v2.5.5/subfinder_2.5.5_linux_amd64.zip;
wget https://github.com/projectdiscovery/simplehttpserver/releases/download/v0.0.5/simplehttpserver_0.0.5_linux_amd64.tar.gz;
wget https://github.com/projectdiscovery/chaos-client/releases/download/v0.4.0/chaos-client_0.4.0_linux_amd64.zip;
wget https://github.com/projectdiscovery/dnsx/releases/download/v1.1.1/dnsx_1.1.1_linux_amd64.zip;
wget https://github.com/projectdiscovery/tlsx/releases/download/v1.0.4/tlsx_1.0.4_linux_amd64.zip;
wget https://github.com/projectdiscovery/proxify/releases/download/v0.0.8/proxify_0.0.8_linux_amd64.zip;
wget https://github.com/projectdiscovery/httpx/releases/download/v1.2.6/httpx_1.2.6_linux_amd64.zip
wget https://github.com/projectdiscovery/cloudlist/releases/download/v1.0.2/cloudlist_1.0.2_linux_amd64.zip;
wget https://github.com/projectdiscovery/interactsh/releases/download/v1.0.7/interactsh-client_1.0.7_Linux_x86_64.zip;
wget https://github.com/projectdiscovery/interactsh/releases/download/v1.0.7/interactsh-server_1.0.7_Linux_x86_64.zip;




wget https://github.com/ffuf/ffuf/releases/download/v1.5.0/ffuf_1.5.0_linux_amd64.tar.gz
wget https://github.com/rverton/webanalyze/releases/download/v0.3.8/webanalyze_0.3.8_Linux_x86_64.tar.gz



go get -u github.com/tomnomnom/gf;
go install github.com/tomnomnom/gf@latest;
go get -u github.com/tomnomnom/fff;
go install github.com/tomnomnom/fff@latest;
go install github.com/tomnomnom/blocksort@latest;
go get "github.com/jessevdk/go-flags"
go install "github.com/jessevdk/go-flags"@latest
go get "github.com/gorilla/mux"
go install "github.com/gorilla/mux"@latest
go get "github.com/golang/example/stringutil"
go install "github.com/golang/example/stringutil"@latest
go install -v github.com/projectdiscovery/wappalyzergo/cmd/update-fingerprints@latest;
go get github.com/projectdiscovery/retryabledns
go install github.com/projectdiscovery/retryabledns@latest



# extra-tools
git clone https://github.com/tomnomnom/hacks.git;
git clone https://github.com/ffuf/ffuf-scripts.git;
git clone https://github.com/tomnomnom/dotfiles.git;
git clone https://github.com/erbbysam/DNSGrep.git;
git clone https://github.com/zseano/JS-Scan.git;
git clone https://github.com/nahamsec/JSParser.git
git clone https://github.com/jquery/jquery.git


wget https://github.com/projectdiscovery/nuclei-templates/archive/refs/tags/v9.3.4.zip;
wget https://github.com/projectdiscovery/nuclei/releases/download/v2.8.7/cve-annotate.zip;
wget https://github.com/projectdiscovery/nuclei-burp-plugin/releases/download/v1.1.0/nuclei-burp-plugin-1.1.0.jar;
wget https://github.com/wappalyzer/wappalyzer/releases/download/v6.10.54/webextension-v2.zip;
wget https://github.com/wappalyzer/wappalyzer/releases/download/v6.10.54/webextension-v3.zip;

