FROM tomcat:10-jdk17

LABEL maintainer="Durga <durgaprasadsetti67@gmail.com>"

RUN rm -rf /usr/local/tomcat/webapps/*

COPY target/maven-web-app.war /usr/local/tomcat/webapps/maven-web-app.war

EXPOSE 8080
