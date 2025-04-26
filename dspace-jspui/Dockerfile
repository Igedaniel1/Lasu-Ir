FROM tomcat:9-jdk8

ENV CATALINA_HOME=/usr/local/tomcat
ENV FILE_URL=https://www.dropbox.com/scl/fi/xkavtxiui7ch97s76xcss/lasu.war?rlkey=k6o3yodob5md97dduyue8okiu&st=92lpi07m&dl=1
ENV FILE_NAME=jspui.war

RUN apt-get update && apt-get install -y wget && \
    wget -O $CATALINA_HOME/webapps/${FILE_NAME} "$FILE_URL"

EXPOSE 8080
