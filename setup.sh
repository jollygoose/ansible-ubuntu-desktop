#!/bin/bash

sudo apt update
sudo apt install git python3-pip -y
python3 -m pip install ansible
export PATH="$HOME/.local/bin:$PATH"
ansible-playbook -K main.yml --connection=local

