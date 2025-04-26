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

# ✅ Create test index.jsp in a temp folder
RUN mkdir -p /tmp/lasu-test && \
    echo '<html><body><h1>Hello from test index.jsp</h1></body></html>' > /tmp/lasu-test/index.jsp

# ✅ Replace the default entrypoint to move the test file after unpacking
CMD cp /tmp/lasu-test/index.jsp $CATALINA_HOME/webapps/ROOT/index.jsp && \
    catalina.sh run

# Expose default Tomcat port
EXPOSE 8080






