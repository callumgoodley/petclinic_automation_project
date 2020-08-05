FROM node:8.10.0 as build-stage

CMD npm uninstall -g angular-cli @angular/cli
CMD npm cache clean
CMD npm install -g @angular/cli@8.0.3

CMD npm install --save-dev @angular/cli@8.0.3

COPY . . 

RUN rm package-lock.json

RUN npm install

EXPOSE 4200 

CMD ng serve --host 0.0.0.0



