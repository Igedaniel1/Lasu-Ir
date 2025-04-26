FROM tomcat:9-jdk8

# Set environment variables
ENV CATALINA_HOME=/usr/local/tomcat
ENV DSPACE_HOME=/dspace

# Copy WAR file into the container
COPY dspace/modules/jspui/target/jspui.war $CATALINA_HOME/webapps/jspui.war

# Debugging: Print contents of the source directory and verify the WAR file
RUN echo "Listing files in /dspace/modules/jspui/target"
RUN ls -alh /dspace/modules/jspui/target/

# Expose port 8080
EXPOSE 8080

# Start Tomcat server
CMD ["catalina.sh", "run"]
