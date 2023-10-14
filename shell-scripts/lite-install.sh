#List of commands for a lite install for all things I want installed
#For debian
sudo apt-get update
sudo apt-get install git

#Vim install
sudo apt-get install vim -y 
mkdir .vim
mkdir .vim/colors
wget https://github.com/arcticicestudio/nord-vim/raw/develop/colors/nord.vim
mv nord.vim .vim/colors
wget https://raw.githubusercontent.com/jacob-macleod/jacob-macleod/master/dot-files/vimrc
mv vimrc .vimrc
sudo git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
sudo chmdd +777 .vimrc
sudo chmod +777 .vim/bundle
sudo apt-get install vim-gtk3 --fix-missing -y

#Z.lua install
sudo apt install lua5.2
wget https://github.com/skywind3000/z.lua/archive/1.8.7.tar.gz
sudo tar -xf 1.8.7.tar.gz

#Python3 install
sudo apt-get install python3
sudo apt-get install python3-pip

#NeoVim install
sudo apt-get install neovim
wget https://github.com/jacob-macleod/jacob-macleod/raw/master/dot-files/init.vim
mv init.vim .config/nvim

sudo apt-get install gnome-system-monitor
sudo apt-get install docker.io

#Doom Emacs install
sudo apt-get install emacs
git clone https://github.com/hlissner/doom-emacs ~/.emacs.d
~/.emacs.d/bin/doom install
wget https://raw.githubusercontent.com/jacob-macleod/jacob-macleod/master/dot-files/init.el
mv init.el .doom.d/init.el
wget https://raw.githubusercontent.com/jacob-macleod/jacob-macleod/master/dot-files/packages.el
mv packages.el .doom.d/packages.el
wget https://raw.githubusercontent.com/jacob-macleod/jacob-macleod/master/dot-files/config.el
mv config.el .doom.d/config.el

#VSCode install
wget https://go.microsoft.com/fwlink/?LinkID=760868
mv index.html?LinkID=760868 vscode.deb
sudo apt-get install libxkbfile1
sudo dpkg --install vscode.deb

#ZSH install
sudo apt-get install zsh
sudo chsh -s /bin/zsh jacob
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
wget https://raw.githubusercontent.com/jacob-macleod/jacob-macleod/master/dot-files/.zshrc
mv .zshrc.1 .zshrc
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

#JVM install
sudo apt-get install openjdk-11-jdk

#Eclipse install
wget http://ftp.fau.de/eclipse/technology/epp/downloads/release/2020-06/R/eclipse-java-2020-06-R-linux-gtk-x86_64.tar.gz
tar -xzf eclipse-java-2020-06-R-linux-gtk-x86_64.tar.gz
./eclipse/eclipse

#Chrome install
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg --install google-chrome-stable_current_amd64.deb

sudo apt-get install firefox-esr

#I3 and Xephyr install
sudo apt-get install xserver-xephyr
sudo apt-get install i3
wget https://raw.githubusercontent.com/jacob-macleod/jacob-macleod/master/shell-scripts/wm.sh

#I3 configuration: {
#Install Yosenemite font
wget https://github.com/supermarin/YosemiteSanFranciscoFont/archive/master.zip
unzip master.zip
mkdir .fonts
mv YosemiteSanFranciscoFont-master/*.ttf ~/.fonts/
sudo apt --fix-broken-install

sudo apt-get install lxappearance
sudo apt-get install thunar
sudo apt-get install dmenu

#Install arc GTK theme
sudo apt-get install arc-theme

#Install the moka icon theme
wget https://snwh.org/moka/download.php?owner=snwh&ppa=ppa&pkg=moka-icon-theme,18.04
mv 'download.php?owner=snwh&ppa=ppa&pkg=moka-icon-theme,18.04' moka.deb
sudo dpkg --install moka.deb
sudo apt --fix-broken install

#Configure the bottom bar
sudo apt-get install i3blocks
wget https://github.com/jacob-macleod/jacob-macleod/raw/master/dot-files/i3blocks.conf
mv i3blocks.conf $HOME/.config/i3
rm etc/i3blocks.conf

#Set background
wget https://i.pinimg.com/originals/3f/a0/40/3fa040b186dbfc221b96b62c7083c03b.jpg
sudo apt-get install feh
feh --bg-scale 3fa040b186dbfc221b96b62c7083c03b.jpg 

#Installing termite
wget https://github.com/jacob-macleod/jacob-macleod/raw/master/shell-scripts/install-termite.sh
bash install-termite.sh

#Install font awesome:
wget https://github.com/FortAwesome/Font-Awesome/archive/5.14.0.zip
unzip 5.14.0.zip
mkdir $HOME/.fonts
mv Font-Awesome-5.14.0/webfonts/fa-regular-400.ttf $HOME/.fonts
mv Font-Awesome-5.14.0/webfonts/fa-brands-400.ttf $HOME/.fonts
mv Font-Awesome-5.14.0/webfonts/fa-solid-900.ttf $HOME/.fonts

#Install up-clock:
wget http://ppa.launchpad.net/apandada1/up-clock/ubuntu/pool/main/u/up-clock/up-clock_6.2-0\~10\~ubuntu20.04.1_all.deb 
sudo dpkg --install up-clock_6.2-0~10~ubuntu20.04.1_all.deb
sudo apt --fix-broken install

#Download i3 config
wget https://github.com/jacob-macleod/jacob-macleod/raw/master/dot-files/config
mkdir $HOME/.config
mkdir $HOME/.config/i3
mv config $HOME/.config/i3/config
# End of i3 config} 

echo "You will need to manually change window features using lxappearance - suggested changes: Change font to SFNS Display. Change the theme in LXappearance to Arc darker. THange the icon theme to moka."
echo "You will need to manually install arc darker firefox theme"
echo "You will need to manually install the vscode edge theme"
echo "You will need to manually install the eclipse darkest dark plugin"
echo "Finally, enter   git config --global user.email 'your email'"
echo "and git config --global user.name 'Your Name'"
