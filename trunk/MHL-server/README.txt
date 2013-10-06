# Instructions on setting up the Mental Health Liberia server development environment.
# These instructions are for linux, if you're using Windows you're on your own...

# Install the needed software
Install MySQL 5
Install Tomcat7
Install Grails 2.3.0, setup $GRAIL_HOME environment variable and add $GRAIL_HOME/bin to your path

# Setup the database
mysql -uroot -p
create database mentalhealthliberiatest;
grant all on mentalhealthliberiatest.* to "mhladmin"@"localhost" identified by "adminpass";

# Create some directories used by the app and give ownership to "tomcat7" user
mkdir /tmp/tomcat7
mkdir /tmp/searchable-index
chown tomcat7:tomcat7 /tmp/tomcat7
chown tomcat7:tomcat7 /tmp/searchable-index

# Run the grails app
Navigate to the MHL-server directory (grails project directory)
execute, "grails run-app"
If you see any errors in the logs you may need to change some configurations

# Builder WAR to deploy to server
grails war

# Deployment
Copy WAR to the server (in the "target" directory)
Deploy by coping WAR to /var/lib/tomcat7/webapps
Restart Tomcat7 with "sudo /etc/init.d/tomcat7 restart"
"tail -f /var/lib/tomcat7/logs/catalina.out" to see if there are problems
