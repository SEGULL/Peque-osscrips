cd C:\apache-tomcat-6.0.18\bin\
shutdown.bat

cd C:\apache-tomcat-6.0.18\webapps
RD /Q  sistema-webapp
del /S  sistema-webapp.war
cd C:\Users\Seg\Documents\workspace-sts-3.7.0.RELEASE\sistema-webapp\target
copy sistema-webapp-1.0.0.0-beta.war C:\apache-tomcat-6.0.18\webapps
cd C:\apache-tomcat-6.0.18\webapps
rename sistema-webapp-1.0.0.0-beta sistema-webapp
rename sistema-webapp-1.0.0.0-beta.war sistema-webapp.war
cd C:\apache-tomcat-6.0.18\bin\
startup.bat