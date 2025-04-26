#!/bin/bash

# Start Tomcat
catalina.sh start

# Wait for Tomcat to finish starting and unpack the WAR
sleep 15

# Copy the test index.jsp into the ROOT directory (after WAR is unpacked)
cp /usr/local/tomcat/webapps/ROOT/test-assets/index.jsp /usr/local/tomcat/webapps/ROOT/index.jsp

# Finally, keep Tomcat running in the foreground
catalina.sh run
