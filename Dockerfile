FROM centos:6.9

RUN yum update -y

RUN curl -sL https://rpm.nodesource.com/setup_8.x | bash -

RUN yum install -y nodejs

RUN npm install -g n

RUN n 8.9.4

RUN ln -sf /usr/local/n/versions/node/8.9.4/bin/node /usr/bin/node

RUN npm install -g npm@6.7.0