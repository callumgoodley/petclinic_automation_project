#! /bin/bash
pwd
sudo rm /spring-petclinic-angular/package-lock.json
sudo npm install
sudo apt-get install chromium-browser -y
export CHROME_BIN=/usr/bin/chromium-browser
cd /home/jenkins/.jenkins/workspace/Testing3/spring-petclinic-angular
sudo apt install npm -y
sudo npm uninstall -g angular-cli @angular/cli
sudo npm cache clean --force
sudo npm install -g @angular/cli@8.0.3
sudo npm install --save-dev @angular/cli@8.0.3
sudo rm package-lock.json
sudo npm install
sudo npm install -g n
sudo n latest
ng test --watch=false --browsers=ChromeHeadless
