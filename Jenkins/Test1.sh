#! /bin/bash
pwd
sudo apt-get install chromium-browser -y
export CHROME_BIN=/usr/bin/chromium-browser
pwd
cd /home/jenkins/.jenkins/workspace/Testing3/spring-petclinic-angular
pwd
ls
sudo rm package-lock.json
ls
sudo npm install -g n
sudo n latest
ls
ng test --watch=false --browsers=ChromeHeadless
