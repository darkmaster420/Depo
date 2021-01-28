#!/bin/bash

# ZSH
sudo pacman -S zsh -y
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Genel KDE
sudo pacman -S yay pacui latte-dock xdg-desktop-portal-gtk telegram-desktop -y
sudo pacman -S python-pip python-pipreqs python-flask python-numpy python-pandas scrapy opencv -y
sudo pacman -S code chromium remmina thefuck micro pulseeffects pacaur screenfetch neofetch -y
sudo pacman -S vlc libreoffice-still
pacaur -S python-devtools realvnc-vnc-viewer teamviewer ruby-colorls -y

# Spotify
yay -S extra/flatpak && flatpak install spotify

# youtube-dl
sudo -H pip install --upgrade youtube-dl

# Sistemde Kurulu Bütün Python Paketlerini Güncellemek
pip install pip-review
pip-review --local --interactive

# VS-Code
cat extensions.txt | xargs -L 1 code --install-extension

# Zsh Eklentiler
git clone https://github.com/zsh-users/zsh-completions ${ZSH_CUSTOM:=~/.oh-my-zsh/custom}/plugins/zsh-completions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
rm -rf ~/.zshrc && wget https://raw.githubusercontent.com/KekikAkademi/Depo/master/Bash/.zshrc && zsh