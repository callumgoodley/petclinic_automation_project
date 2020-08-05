#!/bin/bash

sudo apt update && sudo apt upgrade -y
sudo apt install -y unzip wget
wget https://releases.hashicorp.com/terraform/0.12.12/terraform_0.12.12_linux_amd64.zip
unzip terraform_*_linux_*.zip
sudo mv terraform /usr/local/bin
rm terraform_*_linux_*.zip

az part
cd Terraform
terraform init
terraform plan
terraform apply -yes