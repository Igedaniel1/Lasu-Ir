FROM tomcat:9-jdk8

# Set environment variables
ENV CATALINA_HOME=/usr/local/tomcat
ENV FILE_URL=https://www.dropbox.com/scl/fi/xkavtxiui7ch97s76xcss/lasu.war?rlkey=k6o3yodob5md97dduyue8okiu&st=d80hrsl7&dl=1
ENV FILE_NAME=ROOT.war

# Install wget and download the WAR file
RUN apt-get update && apt-get install -y wget && \
    wget -O $CATALINA_HOME/webapps/$FILE_NAME "$FILE_URL"

# Allow Tomcat to bind externally (instead of localhost)
RUN sed -i 's/address="127.0.0.1"/address="0.0.0.0"/' $CATALINA_HOME/conf/server.xml || true

# Create a safe test file in a persistent location
RUN mkdir -p $CATALINA_HOME/test-assets && \
    echo '<html><body><h1>Hello from test index.jsp</h1></body></html>' > $CATALINA_HOME/test-assets/index.jsp

# Add the custom start script
COPY start.sh /usr/local/tomcat/start.sh
RUN chmod +x /usr/local/tomcat/start.sh

# Expose default Tomcat port
EXPOSE 8080

# Use custom start script to ensure Tomcat runs and then copy the test file
CMD ["/usr/local/tomcat/start.sh"]








