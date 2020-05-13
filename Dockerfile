FROM centos

RUN yum install wget -y

RUN wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo

RUN rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key

RUN yum install jenkins -y

RUN yum install java-1.8.0-openjdk -y

RUN yum install initscripts -y

RUN /etc/init.d/jenkins start

EXPOSE 80
