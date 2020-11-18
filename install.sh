####################################
# N : "s0d-deb-install"            #
# V : "0.1"                        #
####################################
#
# This is the Debian-based version of s0d's installation file
#
# This file installs/updates:
# git, wget, curl, nano, net-tools, zsh, neofetch, screenfetch, gcc, nasm, rustc, golang, python, ruby, perl, vlc, sublime-text, vscode

clear

# update packages
apt-get update

# install sublime-text
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
apt-get install apt-transport-https
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
apt-get update
apt-get install sublime-text

# install vscode
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
sudo install -o root -g root -m 644 packages.microsoft.gpg /etc/apt/trusted.gpg.d/
sudo sh -c 'echo "deb [arch=amd64 signed-by=/etc/apt/trusted.gpg.d/packages.microsoft.gpg] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
sudo apt-get install apt-transport-https
sudo apt-get update
sudo apt-get install code

# install others
apt-get install git wget curl nano net-tools zsh neofetch screenfetch gcc nasm rustc golang python ruby perl vlc

clear

printf "Finished install!\nBut I don't know if it worked...\nI will add this feature soon!"
