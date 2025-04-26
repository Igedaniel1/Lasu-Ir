FROM tomcat:9-jdk8

ENV CATALINA_HOME=/usr/local/tomcat

COPY dspace/modules/jspui/target/jspui.war $CATALINA_HOME/webapps/jspui.war

EXPOSE 8080

CMD ["catalina.sh", "run"]
