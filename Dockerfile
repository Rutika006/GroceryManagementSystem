# Use official Tomcat base image
FROM tomcat:9.0

# Remove default ROOT app
RUN rm -rf /usr/local/tomcat/webapps/ROOT

# Copy your war file into the webapps folder
COPY target/GrocerySystem_UsingMvc.war /usr/local/tomcat/webapps/ROOT.war

# Expose port 8080 for web traffic
EXPOSE 8080

# Start Tomcat server
CMD ["catalina.sh", "run"]
