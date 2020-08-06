

curl -sL https://aka.ms/InstallAzureCLIDeb | sudo bash

if cd petclinic_automation_project; then git pull; else git clone https://github.com/callumgoodley/petclinic_automation_project.git; fi
cd petclinic_automation_project
git checkout Terraform
cd Terraform
pwd

terraform init
terraform plan
terraform apply -auto-approve 
