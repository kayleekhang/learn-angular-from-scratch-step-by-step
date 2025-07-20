FROM node:10

WORKDIR /usr/src/lafs 

COPY package*.json ./ 

RUN npm install -g @angular/cli@v6-lts
RUN npm install 

# RUN npm ci --only=production 

COPY . . 

EXPOSE 4200 

CMD ng serve --host 0.0.0.0 

