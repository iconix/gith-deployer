echo '>>> Retrieving new list of packages'
sudo apt-get update

echo '>>> Installing nodejs, npm'
sudo apt-get install nodejs npm nodejs-legacy

echo '>>> Installing docker'
curl -sSL https://get.docker.io/ubuntu/ | sudo sh
sudo ln -sf /usr/bin/docker.io /usr/local/bin/docker
sudo gpasswd -a ${USER} docker
sudo service docker restart
newgrp docker

echo '>>> Making shell scripts executable'
chmod a+x hook.sh
