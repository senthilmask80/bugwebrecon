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
wget  


wget https://github.com/ffuf/ffuf/releases/download/v1.5.0/ffuf_1.5.0_linux_amd64.tar.gz



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



# extra-tools
git clone https://github.com/tomnomnom/hacks.git;
git clone https://github.com/ffuf/ffuf-scripts.git;
git clone https://github.com/tomnomnom/dotfiles.git;
git clone https://github.com/erbbysam/DNSGrep.git;
