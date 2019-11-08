FROM tomcat:9.0.21-jdk11-openjdk

MAINTAINER Ralph OFlinn <roflinn@uab.edu>
MAINTAINER Justin Merz <jrmerz@ucdavis.edu>
MAINTAINER Quinn Hart <qjhart@ucdavis.edu>

RUN apt-get update
RUN apt-get install -y maven git

WORKDIR /usr/local/

#RUN git clone https://github.com/vivo-project/Vitro.git Vitro -b rel-1.11.0-RC
#RUN git clone https://github.com/vivo-project/VIVO.git VIVO -b rel-1.11.0-RC

ENV VITRO_MD5 cfe5125fb706e3966b2cd6ecb77972bc
ENV VITRO_VERSION 1.11.0
RUN wget -O Vitro.zip https://github.com/vivo-project/Vitro/releases/download/vitro-${VITRO_VERSION}/vitro-${VITRO_VERSION}.zip 
RUN unzip Vitro.zip -d Vitro
RUN rm Vitro.zip
#RUN echo "$VITRO_MD5  vitro.tar.gz" > vitro.tar.gz.md5
#RUN wget -O vitro.tar.gz https://github.com/vivo-project/Vitro/releases/download/vitro-${VITRO_VERSION}/vitro-${VITRO_VERSION}.tar.gz && \
#     md5sum vitro.tar.gz.md5 && \
#     tar -xzf vitro.tar.gz && rm vitro.tar.gz

ENV VIVO_MD5 74125fa47d451b22b69527c44dfb9924
ENV VIVO_VERSION 1.11.0
RUN wget -O VIVO.zip https://github.com/vivo-project/VIVO/releases/download/vivo-${VIVO_VERSION}/VIVO-${VIVO_VERSION}.zip
RUN unzip VIVO.zip -d VIVO
RUN rm VIVO.zip
#RUN echo "$VIVO_MD5  vivo.tar.gz" > vivo.tar.gz.md5
#RUN wget -O vivo.tar.gz https://github.com/vivo-project/VIVO/releases/download/vivo-${VIVO_VERSION}/VIVO-${VIVO_VERSION}.tar.gz && \
#     md5sum vivo.tar.gz.md5 && \
#     tar -xzf vivo.tar.gz && rm vivo.tar.gz


WORKDIR /usr/local/VIVO/
RUN mvn install -s example-settings.xml

# clean up
RUN rm -r /usr/local/tomcat/webapps/docs
RUN rm -r /usr/local/tomcat/webapps/examples

# Set properties
# Adjust logging, you can mount over this in docker-compose to further adjust
COPY ./log4j.properties /usr/local/tomcat/webapps/VIVO/WEB-INF/classes

WORKDIR /usr/local/VIVO/home/config

COPY ./dockercompose.runtime.properties runtime.properties
COPY ./example.applicationSetup.n3 applicationSetup.n3
COPY ./dockercompose.runtime.properties /usr/local/vivo/home/config/runtime.properties
COPY ./example.applicationSetup.n3 /usr/local/vivo/home/config/applicationSetup.n3


RUN chmod ugo+w -R /usr/local/tomcat/temp
RUN chmod ugo+w -R /usr/local/vivo/home
RUN export CATALINA_OPTS="-Xms512m -Xmx512m -XX:MaxPermSize=128m"
