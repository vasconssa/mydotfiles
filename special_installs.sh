# enable bluez
sudo systemctl enable bluetooth.service

# enable networkmanager
sudo systemctl enable NetworkManager.service

# st
mkdir ~/.builds
git clone https://github.com/LukeSmithxyz/st.git ~/.builds/st
cd ~/.builds/st
make
sudo make install
cd ~/.dotfiles
