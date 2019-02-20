FROM tomcat

COPY target/primeable-mock-server-0.0.1.war /usr/local/tomcat/webapps/ROOT.war

COPY target/primeable-mock-server-0.0.1 /usr/local/tomcat/webapps/ROOT
