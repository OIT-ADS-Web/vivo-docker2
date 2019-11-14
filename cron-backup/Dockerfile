FROM maven:3.6.2-jdk-11-openj9

MAINTAINER Robert Nelson <robert.nelson@duke.edu>

WORKDIR /usr/local/
RUN git clone git@github.com:vivo-project/jenatools.git -b master 
RUN mvn install -s pom.xml

# NOTE: this might need to be mounted directory in openshift
WORKDIR /usr/local/VIVO/home/config

COPY ../vivo/dockercompose.runtime.properties runtime.properties
COPY ../vivo/example.applicationSetup.n3 applicationSetup.n3



