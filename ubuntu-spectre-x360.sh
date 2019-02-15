#/bin/bash

# Fix Synaptic Driver (touchpad velocityscrolling)
# https://ubuntuforums.org/showthread.php?t=2391805
sudo apt install xserver-xorg-input-synaptics

# Graphics
# https://askubuntu.com/questions/1065852/how-to-upgrade-intel-graphics-driver
sudo add-apt-repository ppa:oibaf/graphics-drivers
sudo apt dist-upgrade


# To remove
ppa-purge ppa:oibaf/graphics-drivers


# Bootstrap
sudo apt install vim  

echo "" > ~/.vimrc.local

git clone --recursive https://github.com/stubbulon5/dotfiles.git .dotfiles \
    && cd .dotfiles && ./bin/dfm install && vim +PluginUpdate
    
    
    
#oh my zsh

apt-get install zsh
apt-get install git-core
Getting zsh to work in ubuntu is weird, since sh does not understand the source command. So, you do this to install zsh

wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh
and then you change your shell to zsh

chsh -s `which zsh`
and then restart

sudo shutdown -r 0
