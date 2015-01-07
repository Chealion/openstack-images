#!/bin/bash

apt-get update
apt-get -y upgrade
apt-get -y install git unzip
cd $HOME
wget https://dl.bintray.com/mitchellh/packer/packer_0.7.5_linux_amd64.zip
mkdir packer
unzip -d packer packer_0.7.5_linux_amd64.zip
rm packer_0.7.5_linux_amd64.zip

apt-get install -y python-pip libssl-dev build-essential libffi-dev python-dev python-openssl
pip install \
	python-openstackclient \
	python-novaclient \
	python-keystoneclient \
	python-swiftclient \
	python-glanceclient \
	python-cinderclient \
	python-neutronclient \
	python-ceilometerclient \
	python-troveclient \
	python-heatclient

echo “PATH=\$PATH:$HOME/packer” >> $HOME/.profile
source $HOME/.profile
