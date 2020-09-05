# Pull base image 
#From tomcat:8-jre8 
ARG  VERSION=8-jre8
From tomcat:$VERSION 

# Maintainer 
MAINTAINER Albert N 
COPY  webapps/target/chamber.war  /usr/local/tomcat/webapps
