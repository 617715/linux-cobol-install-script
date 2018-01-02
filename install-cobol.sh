#!/bin/bash
# A Bash script to install COBOL on linux
#
sudo apt-get -y update
sudo apt-get -y -f dist-upgrade 
#install GIT
sudo apt-get -y -f install git
#Clone the repo
cd
git clone https://github.com/neopragma/provision-cobol-dev-ubuntu
 #install aptitude
sudo apt-get install aptitude
#install open-cobol
sudo apt-get install open-cobol
#copy cobol compiler to local bin for setup script verification sudo cp /usr/bin/cobc /usr/local/bin/

#Run the setup script 
cd ~/provision-cobol-dev-ubuntu
sudo ./setup
#copy cobc to the gnu-cobol map
sudo mkdir -p ~/.cobol/gnu-cobol-1.1/cobc
sudo cp /usr/local/bin/cobc ~/.cobol/gnu-cobol-1.1/cobc

#example compilation COBOL files
#cobc hello_world.cbl
