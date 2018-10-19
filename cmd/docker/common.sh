#!/bin/bash 

## for ubuntu 16.04 x86_64
rm_old_version_ubuntu_16_04_x86_64()
{
	echo "rm_old_version_ubuntu_16_04_x86_64"
	
	sudo apt-get -y remove docker docker-engine docker.io

	return 0
}

install_docker_ubuntu_16_04_x86_64()
{
	#Update the apt package index:
    sudo apt-get update
	
	#Install packages to allow apt to use a repository over HTTPS:
	sudo apt-get -y install apt-transport-https ca-certificates curl software-properties-common
	
	#Add Docker’s official GPG key:
	# 官方源
	#curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
	curl -fsSL https://mirrors.ustc.edu.cn/docker-ce/linux/ubuntu/gpg | sudo apt-key add -
	
	#sudo apt-key fingerprint 0EBFCD88
	
	# 官方源
    #sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
	sudo add-apt-repository "deb [arch=amd64] https://mirrors.ustc.edu.cn/docker-ce/linux/ubuntu $(lsb_release -cs) stable"
    
	#Update the apt package index:
	sudo apt-get update
	
	#Install the latest version of Docker CE, or go to the next step to install a specific version:
	sudo apt-get -y install docker-ce
	
	#start docker
	sudo systemctl enable docker
	sudo systemctl start docker
	
	# 默认情况下， docker 命令会使用 Unix socket 与 Docker 引擎通讯。而只有 root 用户和
	# docker 组的用户才可以访问 Docker 引擎的 Unix socket。出于安全考虑，一般 Linux 系统
	# 上不会直接使用 root 用户。因此，更好地做法是将需要使用 docker 的用户加入 docker
	# 用户组。
	# 建立 docker 组：
	# sudo groupadd docker
	
	#将当前用户加入 docker 组：
	# sudo usermod -aG docker $USER
	
	#退出当前终端并重新登录，进行如下测试。
}

Register__docker_image_accelerator_ubuntu_16_04_x86_64()
{
    #http://guide.daocloud.io/dcs/daocloud-9153151.html#docker-toolbox
	
	curl -sSL https://get.daocloud.io/daotools/set_mirror.sh | sh -s http://f1361db2.m.daocloud.io
	sudo systemctl restart docker.service
}

## for centos 7_4_1708 x86_64
rm_old_version_centos_7_4_1708_x86_64()
{
	echo "rm_old_version_centos_7_4_1708_x86_64"

	return 0
}



