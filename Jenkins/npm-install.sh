sudo apt install npm -y
sudo npm uninstall -g angular-cli @angular/cli
sudo npm cache clean --force
sudo npm install -g @angular/cli@8.0.3
sudo npm install --save-dev @angular/cli@8.0.3
sudo rm /spring-petclinic-angular/package-lock.json
sudo npm install
