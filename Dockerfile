# Pull base image
ARG VERSION=8-jre8
FROM tomcat:$VERSION

# Maintainer 
MAINTAINER Albert N
COPY  webapps/target/chamber.war  /usr/local/tomcat/webapps
RUN  yum update -y
RUN  yum install samba -y
RUN yum install git -y


