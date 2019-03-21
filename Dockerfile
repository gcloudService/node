FROM centos:6.9

RUN yum update -y

RUN yum install wget gcc gcc-c++ -y

RUN wget https://nodejs.org/dist/v8.9.4/node-v8.9.4.tar.gz
