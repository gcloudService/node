FROM centos:6.9

RUN yum update -y

RUN yum install -y openssh-clients libaio wget unzip

RUN curl -sL https://rpm.nodesource.com/setup_10.x | bash -

RUN yum install -y nodejs

RUN npm install -g n

RUN n 10.22.1

RUN ln -sf /usr/local/n/versions/node/10.22.1/bin/node /usr/bin/node

RUN npm install -g npm@6.14.6

RUN npm install -g pm2@3.4.0

RUN mkdir -p /opt/oracle

RUN cd /opt/oracle \
    && wget https://download.oracle.com/otn_software/linux/instantclient/185000/instantclient-basic-linux.x64-18.5.0.0.0dbru.zip \
    && unzip instantclient-basic-linux.x64-18.5.0.0.0dbru.zip

RUN sh -c "echo /opt/oracle/instantclient_18_5 > /etc/ld.so.conf.d/oracle-instantclient.conf"

RUN ldconfig

ENV LD_LIBRARY_PATH /opt/oracle/instantclient_18_5
