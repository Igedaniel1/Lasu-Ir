# Use Tomcat 9 with OpenJDK 8 as the base image
FROM tomcat:9-jdk8

# Set environment variables
ENV CATALINA_HOME=/usr/local/tomcat
ENV FILE_URL=https://www.dropbox.com/scl/fi/xkavtxiui7ch97s76xcss/lasu.war?rlkey=k6o3yodob5md97dduyue8okiu&st=d80hrsl7&dl=1
ENV FILE_NAME=ROOT.war

# Install wget to download the WAR file
RUN apt-get update && apt-get install -y wget && \
    wget -O $CATALINA_HOME/webapps/$FILE_NAME "$FILE_URL"

# Stop Tomcat from unpacking the WAR file (it will unpack it on its own)
RUN sed -i 's/unpackWARs="true"/unpackWARs="false"/' $CATALINA_HOME/conf/server.xml

# Make sure Tomcat binds to 0.0.0.0 (allow external access)
RUN sed -i 's/address="127.0.0.1"/address="0.0.0.0"/' $CATALINA_HOME/conf/server.xml || true

# Create the necessary directory for test index.jsp and copy it in
RUN mkdir -p /usr/local/tomcat/webapps/ROOT && \
    echo '<html><body><h1>Hello from test index.jsp</h1></body></html>' > /usr/local/tomcat/webapps/ROOT/index.jsp

# Expose the correct port (8080)
EXPOSE 8080

# Copy the start.sh script
COPY start.sh /usr/local/tomcat/start.sh
RUN chmod +x /usr/local/tomcat/start.sh

# Default command to start Tomcat
CMD ["/usr/local/tomcat/start.sh"]








