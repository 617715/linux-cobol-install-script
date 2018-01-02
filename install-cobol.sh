#!/bin/bash
# A Bash script to install COBOL on linux
#
apt-get -y update
apt-get -y -f dist-upgrade 
#install GIT
apt-get -y -f install git
#Clone the repo
cd
git clone https://github.com/neopragma/provision-cobol-dev-ubuntu
#install aptitude
apt-get install aptitude
#install open-cobol
apt-get install open-cobol
#copy cobol compiler to local bin for setup script verification sudo cp /usr/bin/cobc /usr/local/bin/

#Run the setup script 
cd ~/provision-cobol-dev-ubuntu
./setup
#copy cobc to the gnu-cobol map
mkdir -p ~/.cobol/gnu-cobol-1.1/cobc
cp /usr/local/bin/cobc ~/.cobol/gnu-cobol-1.1/cobc

#example compilation COBOL files
#cobc hello_world.cbl
echo 'installation complete'
echo 'example: cobc hello_world.cbl'
