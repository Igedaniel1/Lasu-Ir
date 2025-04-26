FROM tomcat:9-jdk8

# Set environment variables
ENV CATALINA_HOME=/usr/local/tomcat
ENV DSPACE_HOME=/dspace

# Copy WAR file into the container
COPY build-artifacts/lasu.war $CATALINA_HOME/webapps/jspui.war


# Expose port 8080
EXPOSE 8080

# Start Tomcat server
CMD ["catalina.sh", "run"]
