#!/bin/bash

echo ''

# create directories
if [[ -d '/etc/linux-setup' ]]; then
    rm -rf /etc/linux-setup
fi

echo 'Creating directory to download files into...'
mkdir /etc/linux-setup

# download required files
echo 'Downloading supporting files...'
wget -q -O /etc/linux-setup/environment.sh "https://raw.githubusercontent.com/wayneboyles/linux-setup/main/environment.sh"
wget -q -O /etc/linux-setup/common.sh "https://raw.githubusercontent.com/wayneboyles/linux-setup/main/common.sh"
wget -q -O /etc/linux-setup/configure.sh "https://raw.githubusercontent.com/wayneboyles/linux-setup/main/configure.sh"

echo ''
echo ''

echo 'All files have been downloaded to /etc/linux-setup'
echo 'Run configure.sh to begin the configuration process.'
echo ''
