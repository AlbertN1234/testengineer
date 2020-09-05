# Pull base image 
From tomcat:8-jre8 
# Maintainer 
MAINTAINER Albert N 
COPY   webapps/target/chamber.war  /usr/local/tomcat/webapps
