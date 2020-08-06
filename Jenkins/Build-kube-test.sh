  
curl -sL https://aka.ms/InstallAzureCLIDeb | sudo bash

curl -LO https://storage.googleapis.com/kubernetes-release/release/`curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt`/bin/linux/amd64/kubectl
sudo mv ./kubectl /usr/local/bin/kubectl


git checkout Testing
cd Terraform
cd Test

terraform init
terraform plan
terraform apply -auto-approve 
sudo az aks install-cli
sudo az aks get-credentials --resource-group project-resources2 --name example-aks2
sudo kubectl get nodes
