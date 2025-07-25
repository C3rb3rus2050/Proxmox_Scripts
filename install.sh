# System Update

Sudo apt-get update && Sudo apt-get upgrade -y && Sudo apt autoremove -y

sudo apt update --fix-missing

# Add Docker's official GPG key:
sudo apt-get update
sudo apt-get install ca-certificates curl -y
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc

# Add the repository to Apt sources:
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "${UBUNTU_CODENAME:-$VERSION_CODENAME}") stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update

sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin -y

# install Docker-Compose
sudo apt install docker.io docker-compose -y

# install net-tools
sudo apt install net-tools -y

# install parted
sudo apt install parted -y

# install ssh
sudo apt install openssh-server -y
systemctl enable ssh
systemctl start ssh

sudo reboot now

