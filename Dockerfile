FROM centos:6.9

RUN yum update -y

RUN yum install -y openssh-clients

RUN curl -sL https://rpm.nodesource.com/setup_10.x | bash -

RUN yum install -y nodejs

RUN npm install -g n

RUN n 10.13.0

RUN ln -sf /usr/local/n/versions/node/10.13.0/bin/node /usr/bin/node

RUN npm install -g npm@6.13.0

RUN npm install -g pm2@2.5.0
