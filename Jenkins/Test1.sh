#! /bin/bash
pwd
sudo apt-get install chromium-browser -y
export CHROME_BIN=/usr/bin/chromium-browser
pwd
cd /home/jenkins/.jenkins/workspace/Testing3/spring-petclinic-angular
sudo rm package-lock.json
sudo npm install -g n
ng test --watch=false --browsers=ChromeHeadless
