export CHROME_BIN=/usr/bin/chromium-browser
pwd
cd /home/jenkins/.jenkins/workspace/Testing3/spring-petclinic-angular
sudo rm package-lock.json
sudo npm install
ng test --watch=false --browsers=ChromeHeadless
