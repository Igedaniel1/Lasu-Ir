FROM tomcat:9-jdk8

# Set environment variables
ENV CATALINA_HOME=/usr/local/tomcat
ENV DSPACE_DIR=/usr/local/dspace  # Set the DSpace directory path
ENV FILE_URL=https://www.dropbox.com/scl/fi/xkavtxiui7ch97s76xcss/lasu.war?rlkey=k6o3yodob5md97dduyue8okiu&st=92lpi07m&dl=1
ENV FILE_NAME=jspui.war

# Install wget and download the WAR file
RUN apt-get update && apt-get install -y wget && \
    wget -O $CATALINA_HOME/webapps/${FILE_NAME} "$FILE_URL"

# Copy your custom context.xml to the Tomcat conf directory
COPY context.xml /usr/local/tomcat/conf/context.xml

# Disable WAR unpacking (optional)
RUN echo "unpackWARs=\"false\"" >> $CATALINA_HOME/conf/context.xml

# Expose Tomcat port 8080
EXPOSE 8080

