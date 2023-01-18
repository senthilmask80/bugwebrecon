#! /bin/bash

# https://github.com/tomnomnom?tab=repositories
# Pending fff, gf, 
wget https://github.com/tomnomnom/assetfinder/releases/download/v0.1.1/assetfinder-linux-amd64-0.1.1.tgz
wget https://github.com/tomnomnom/unfurl/releases/download/v0.4.3/unfurl-linux-amd64-0.4.3.tgz
wget https://github.com/tomnomnom/qsreplace/releases/download/v0.0.3/qsreplace-linux-amd64-0.0.3.tgz
wget https://github.com/tomnomnom/httprobe/releases/download/v0.2/httprobe-linux-amd64-0.2.tgz
wget https://github.com/tomnomnom/waybackurls/releases/download/v0.1.0/waybackurls-linux-amd64-0.1.0.tgz



wget https://github.com/ffuf/ffuf/releases/download/v1.5.0/ffuf_1.5.0_linux_amd64.tar.gz



go get -u github.com/tomnomnom/gf;
go install github.com/tomnomnom/gf@latest;
go get -u github.com/tomnomnom/fff;
go install github.com/tomnomnom/fff@latest;
go install github.com/tomnomnom/blocksort@latest;





# extra-tools
git clone https://github.com/tomnomnom/hacks.git;
git clone https://github.com/ffuf/ffuf-scripts.git;
