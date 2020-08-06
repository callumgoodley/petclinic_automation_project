sudo apt-get install chromium-browser
export CHROME_BIN=usr/bin/chromium-browser
cd /home/jenkins/.jenkins/workspace/Testing3/spring-petclinic-angular
ng test --watch=false --browsers=ChromeHeadless
