#!/bin/bash

# Start Tomcat
catalina.sh start

# Wait for Tomcat to finish starting and unpack the WAR
# This can vary based on your app, but you can wait a few seconds
sleep 15

# Now move the test file into the ROOT directory after the unpacking process
cp /usr/local/tomcat/test-assets/index.jsp /usr/local/tomcat/webapps/ROOT/index.jsp

# Finally, keep Tomcat running in the foreground
catalina.sh run
