# System Update

apt-get update && apt-get upgrade -y && apt autoremove -y

apt update --fix-missing -y

# Add Docker's official GPG key:
apt-get update
apt-get install ca-certificates curl -y
install -m 0755 -d /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
chmod a+r /etc/apt/keyrings/docker.asc

# Add the repository to Apt sources:
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "${UBUNTU_CODENAME:-$VERSION_CODENAME}") stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
apt-get update

apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin -y

# install Docker-Compose
apt install docker.io docker-compose -y

# install net-tools
apt install net-tools -y

# install parted
apt install parted -y

# install ssh
apt install openssh-server -y
systemctl enable ssh
systemctl start ssh

reboot now

