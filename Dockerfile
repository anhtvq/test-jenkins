FROM tomcat:8.5.93-jdk8

RUN sed -i 's/shared.loader=/shared.loader="\/usr\/local\/tomcat\/hbkv2\/props"/g' /usr/local/tomcat/conf/catalina.properties
RUN sed -i '/ertxn.batch.file.upload.dir/d' /usr/local/tomcat/hbkv2/props/ertxn_batch.properties
RUN sed -i 'ertxn.batch.file.upload.dir=./' /usr/local/tomcat/hbkv2/props/ertxn_batch.properties
