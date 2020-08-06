#! /bin/bash
sudo apt install npm -y
sudo npm uninstall -g angular-cli @angular/cli
sudo npm cache clean --force
sudo npm install -g @angular/cli@8.0.3
sudo npm install --save-dev @angular/cli@8.0.3
pwd

sudo npm install
sudo apt-get install chromium-browser -y
export CHROME_BIN=/usr/bin/chromium-browser
cd /home/jenkins/.jenkins/workspace/Testing3/spring-petclinic-angular

sudo npm --version
sudo npm install -g n
sudo n latest
ng test --watch=false --browsers=ChromeHeadless
