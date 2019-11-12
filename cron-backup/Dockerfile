FROM tomcat:9.0.21-jdk11-openjdk

MAINTAINER Robert Nelson <robert.nelson@duke.edu>

RUN apt-get update
RUN apt-get install -y maven git

WORKDIR /usr/local/
RUN git clone git@github.com:vivo-project/jenatools.git -b master 
RUN mvn install -s pom.xml

# Set properties
# Adjust logging, you can mount over this in docker-compose to further adjust
#COPY ./log4j.properties /usr/local/tomcat/webapps/VIVO/WEB-INF/classes
WORKDIR /usr/local/VIVO/home/config
COPY ../vivo/dockercompose.runtime.properties runtime.properties
COPY ../vivo/example.applicationSetup.n3 applicationSetup.n3

#RUN export CATALINA_OPTS="-Xms512m -Xmx512m -XX:MaxPermSize=128m"



