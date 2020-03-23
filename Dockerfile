FROM tomcat:8.5.53

ADD **/*.war /usr/local/tomcat/webapps

EXPOSE 8080

CMD ["catalina.sh", "run"]