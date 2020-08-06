sudo apt update && sudo apt upgrade -y
sudo apt install -y wget unzip
wget https://releases.hashicorp.com/terraform/0.12.12/terraform_0.12.12_linux_amd64.zip
unzip terraform_*_linux_*.zip
sudo mv terraform /usr/local/bin
rm terraform_*_linux_*.zip

curl -sL https://aka.ms/InstallAzureCLIDeb | sudo bash

curl -LO https://storage.googleapis.com/kubernetes-release/release/`curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt`/bin/linux/amd64/kubectl
sudo mv ./kubectl /usr/local/bin/kubectl

if cd petclinic_automation_project; then git pull; else git clone https://github.com/callumgoodley/petclinic_automation_project.git; fi
cd petclinic_automation_project
git checkout Terraform
cd Terraform
cd ScaleSet 

terraform init
terraform plan
terraform apply -auto-approve 
az aks install-cli
az aks get-credentials --resource-groupexample-resources --name example-aks1
kubectl get nodes