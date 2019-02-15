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
