FROM tomcat:9-jdk8

# Set environment variables
ENV CATALINA_HOME=/usr/local/tomcat
ENV PORT 8080  # Default port if not set by Render

# Install wget and download the WAR file
RUN apt-get update && apt-get install -y wget && \
    wget -O $CATALINA_HOME/webapps/ROOT.war "https://www.dropbox.com/scl/fi/xkavtxiui7ch97s76xcss/lasu.war?rlkey=k6o3yodob5md97dduyue8okiu&st=d80hrsl7&dl=1"

# Stop Tomcat from trying to unpack the WAR file (read-only file system)
RUN sed -i 's/unpackWARs="true"/unpackWARs="false"/' $CATALINA_HOME/conf/server.xml

# Ensure Tomcat binds to 0.0.0.0 instead of localhost (for external access)
RUN sed -i 's/address="127.0.0.1"/address="0.0.0.0"/' $CATALINA_HOME/conf/server.xml || true

# Dynamically set the Connector port in server.xml using the PORT variable
RUN sed -i 's/port="8080"/port="${PORT}"/' $CATALINA_HOME/conf/server.xml

# Expose the dynamic port
EXPOSE 8080

# Add a simple index.jsp to confirm the root URL responds
RUN mkdir -p /usr/local/tomcat/webapps/ROOT && \
    echo '<html><body><h1>Hello from test index.jsp</h1></body></html>' > /usr/local/tomcat/webapps/ROOT/index.jsp

# Start Tomcat
CMD ["catalina.sh", "run"]








