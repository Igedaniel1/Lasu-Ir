FROM tomcat:9-jdk8

ENV CATALINA_HOME=/usr/local/tomcat
ENV FILE_URL=https://www.dropbox.com/scl/fi/xkavtxiui7ch97s76xcss/lasu.war?rlkey=k6o3yodob5md97dduyue8okiu&st=d80hrsl7&dl=1
ENV FILE_NAME=ROOT.war

RUN apt-get update && apt-get install -y wget && \
    wget -O $CATALINA_HOME/webapps/$FILE_NAME "$FILE_URL"

# Fix 1: Stop Tomcat from trying to unpack the WAR (read-only FS)
RUN sed -i 's/unpackWARs="true"/unpackWARs="false"/' $CATALINA_HOME/conf/server.xml

# Fix 2: Bind Tomcat to 0.0.0.0, not localhost
RUN sed -i 's/address="127.0.0.1"/address="0.0.0.0"/' $CATALINA_HOME/conf/server.xml || true

EXPOSE 8080


