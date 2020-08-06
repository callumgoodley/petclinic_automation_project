sudo apt update && sudo apt upgrade -y
sudo apt install -y wget unzip
wget https://releases.hashicorp.com/terraform/0.12.12/terraform_0.12.12_linux_amd64.zip
unzip terraform_*_linux_*.zip
sudo mv terraform /usr/local/bin
rm terraform_*_linux_*.zip

sudo apt install -y curl jq
version=$(curl -s https://api.github.com/repos/docker/compose/releases/latest | jq -r '.tag_name')
sudo curl -L "https://github.com/docker/compose/releases/download/${version}/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
curl -sL https://aka.ms/InstallAzureCLIDeb | sudo bash

if cd petclinic_automation_project; then git pull; else git clone https://github.com/callumgoodley/petclinic_automation_project.git; fi
cd petclinic_automation_project
git checkout Terraform
cd Terraform
pwd

terraform init
terraform plan
terraform apply -auto-approve 
