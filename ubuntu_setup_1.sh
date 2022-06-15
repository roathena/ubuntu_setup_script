echo "updating the system"
sleep 3

sudo apt update

echo "installing apt-fast as the package manager"
sleep 3

sudo apt install aria2 axel
sudo add-apt-repository ppa:apt-fast/stable
sudo apt update
sudo apt -y install apt-fast

echo "setting up zsh as the primary shell"
sudo apt-fast -y install zsh
sudo chsh -s /usr/bin/zsh root
sudo chsh -s /usr/bin/zsh $USER
touch ~/.zshrc
sudo apt-fast install -y wget git
echo "rebooting the system, pls run the part 2 of the script after reboot..."
sleep 5
sudo reboot
