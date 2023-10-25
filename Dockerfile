FROM tomcat:8.5.93-jdk8

RUN sed -i 's/shared.loader=/shared.loader="\/usr\/local\/tomcat\/hbkv2\/props"/g' /usr/local/tomcat/conf/catalina.properties

