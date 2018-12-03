# CNI Introduction

## Table of Contents
- [Requirements](#requirements)
- [CNI Introduction](#cni-introduction)

## Requirements

### Install VirtualBox v5.1

- Ubuntu 16.04
```sh
sudo bash -c 'echo "deb https://download.virtualbox.org/virtualbox/debian xenial contrib" >> /etc/apt/sources.list'
wget -q https://www.virtualbox.org/download/oracle_vbox_2016.asc -O- | sudo apt-key add -
wget -q https://www.virtualbox.org/download/oracle_vbox.asc -O- | sudo apt-key add -
sudo apt-get update
sudo apt-get install virtualbox-5.1
```

- Ubuntu 18.04
```
sudo bash -c 'echo "deb https://download.virtualbox.org/virtualbox/debian bionic contrib" >> /etc/apt/sources.list'
wget -q https://www.virtualbox.org/download/oracle_vbox_2016.asc -O- | sudo apt-key add -
wget -q https://www.virtualbox.org/download/oracle_vbox.asc -O- | sudo apt-key add -
sudo apt-get update
sudo apt-get install virtualbox-5.1
```

### Install vagrant

```sh
wget https://releases.hashicorp.com/vagrant/2.1.1/vagrant_2.1.1_x86_64.deb
sudo dpkg -i vagrant_2.1.1_x86_64.deb
sudo ln -s /usr/bin/vagrant /usr/local/bin/vagrant
vagrant version
```

### Get repo & start the vagrant environment

```sh
cd ~/ && git clone https://github.com/sufuf3/hands-on-w-tutorials.git
cd ~/hands-on-w-tutorials/2018-12-06/ && vagrant up --provider=virtualbox
```

## CNI Introduction

- Slides: http://bit.ly/cni1206
