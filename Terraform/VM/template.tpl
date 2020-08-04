#cloud-config
packages:
  - nodejs
  - npm
runcmd:
  - sudo apt update
  - curl https://get.docker.com | sudo bash
  - sudo usermod -aG docker $(whoami)
  - sudo apt install -y curl jq
  - sudo curl -L "https://github.com/docker/compose/releases/download/1.26.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
  - sudo chmod +x /usr/local/bin/docker-compose
  - sudo apt-get install mysql-server -y
  - sudo apt install -y nginx
  - cd home/azureuser
  - git clone https://github.com/callumgoodley/petclinic_automation_project.git
  - cd petclinic_automation_project
#This installs docker, compose, npm and nodejs.