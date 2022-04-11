echo -e '\e[31m■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■\e[0m'
echo -e '\e[Installation Script for nodejs, python, ffmpeg and java. Lets go!\e[0m'
echo -e '\e[31m■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■\e[0m'

# Here you install sudo
apt-get install sudo
sudo apt-get install build-essential libcairo2-dev libpango1.0-dev libjpeg-dev libgif-dev librsvg2-dev curl

# Here you install yarn
curl -sL https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt update
sudo apt install -y yarn

# Here you install nodejs
sudo apt update
sudo apt install -y build-essential curl
curl -sL https://deb.nodesource.com/setup_16.x | sudo -E bash -
sudo apt install -y nodejs

# Here you install python
sudo apt-get install python-pip
sudo apt-get install python3-pip
curl -O https://www.python.org/ftp/python/3.9.1/Python-3.9.1.tar.xz
tar -xf Python-3.9.1.tar.xz
cd Python-3.9.1
./configure --enable-optimizations
make -j 4
sudo make altinstall
cd ..

# Here you install java
wget https://download.java.net/openjdk/jdk13/ri/openjdk-13+33_linux-x64_bin.tar.gz
sudo mkdir -p /usr/lib/jvm
sudo tar zxvf openjdk-13+33_linux-x64_bin.tar.gz -C /usr/lib/jvm
sudo update-alternatives --install "/usr/bin/java" "java" "/usr/lib/jvm/jdk-13/bin/java" 1
sudo update-alternatives --set java /usr/lib/jvm/jdk-13/bin/java


# Here you install ffmpeg
sudo apt update
sudo apt install ffmpeg

echo -e 'Installation should be successfull, look for errors in the log.'
echo -e '\e[96m■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■\e[0m'
echo -e 'Credits to citron#5067 and node-control.de'
echo -e 'Inspired by Shoda1966 and Kiroo Development'
echo -e '\e[96m■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■\e[0m'
