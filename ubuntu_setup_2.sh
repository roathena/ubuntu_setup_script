echo "continuing from left off..."
sleep 3

wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh
cp ~/.oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc
source ~/.zshrc

echo "Setting aliases and finishing zsh setup"
sleep 2

sudo rm -rf ~/.zshrc
sleep 1
wget https://raw.githubusercontent.com/roathena/ubuntu_setup_script/main/.zshrc
source ~/.zshrc

echo "Upgrading the entire system..."
sleep 3
upgrade -y
echo "\n"
sleep 2
echo "Rebooting the system, after reboot run part 3 of the install script"
sleep 2

exit
