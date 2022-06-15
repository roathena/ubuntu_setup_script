echo "Continuing where left off"
sleep 2
echo "Installing Anaconda Distribution..."
sleep 2

sudo apt-fast -y install libgl1-mesa-glx libegl1-mesa libxrandr2 libxrandr2 libxss1 libxcursor1 libxcomposite1 libasound2 libxi6 libxtst6

cd ~/Downloads
wget https://repo.anaconda.com/archive/Anaconda3-2022.05-Linux-x86_64.sh | zsh

source ~/.zshrc
conda config --set auto_activate_base False

echo "Installing Duplicati..."
sleep 2
wget https://updates.duplicati.com/beta/duplicati_2.0.6.3-1_all.deb | sudo apt-fast install

echo "Installing Brave Browser..."
sleep 2

sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg

echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list

sudo apt update

sudo apt install brave-browser

echo "All done..."
sleep 1
echo "Thankyou for using the script, rebooting the system..."
sleep 2
sudo reboot 
