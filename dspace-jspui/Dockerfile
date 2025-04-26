# Stage 2: Run it on Tomcat
FROM tomcat:9-jdk8

ENV CATALINA_HOME=/usr/local/tomcat
ENV DSPACE_HOME=/dspace

RUN apt-get update && apt-get install -y curl && \
    curl -L -o $CATALINA_HOME/webapps/jspui.war ""

EXPOSE 8080

CMD ["catalina.sh", "run"]
