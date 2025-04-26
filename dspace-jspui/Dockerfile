FROM tomcat:9-jdk8

# Set environment variables
ENV CATALINA_HOME=/usr/local/tomcat
ENV FILE_URL=https://www.dropbox.com/scl/fi/xkavtxiui7ch97s76xcss/lasu.war?rlkey=k6o3yodob5md97dduyue8okiu&st=d80hrsl7&dl=1
ENV FILE_NAME=ROOT.war

# Install wget and download the WAR file
RUN apt-get update && apt-get install -y wget && \
    wget -O $CATALINA_HOME/webapps/$FILE_NAME "$FILE_URL"

# Stop Tomcat from trying to unpack the WAR file (optional, for read-only)
RUN sed -i 's/unpackWARs="true"/unpackWARs="false"/' $CATALINA_HOME/conf/server.xml

# Allow Tomcat to listen externally (not just on localhost)
RUN sed -i 's/address="127.0.0.1"/address="0.0.0.0"/' $CATALINA_HOME/conf/server.xml || true

# Ensure Tomcat listens on port 8080
RUN sed -i 's/port="8080"/address="0.0.0.0" port="8080"/' $CATALINA_HOME/conf/server.xml

# Expose default Tomcat port
EXPOSE 8080









