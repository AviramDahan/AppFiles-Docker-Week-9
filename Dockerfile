FROM node:14

# Create app directory
RUN mkdir -p /home/aviramsuser/app
WORKDIR /home/aviramsuser/app

COPY package*.json /home/aviramsuser/app/

RUN npm install
RUN npm npm run initdb

COPY . /home/aviramsuser/app/

EXPOSE 8080

CMD ["npm", "run", "dev"]
