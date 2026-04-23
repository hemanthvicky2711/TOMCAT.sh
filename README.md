# TOMCAT.sh
This is an automation script for tomcat setup with java-17 dependency. 

**STEPS :**

1. Setup server and launch terminal
2. Run tomcat.sh script in terminal to setup tomcat
3. Go to cd apache-tomcat-9.0.117/webapps/manager/META-INF/
4. sudo vim context.xml
5. Delete line number 21 and 22 : save ande exit
6. Go to cd apache-tomcat-9.0.117/conf/
7. sudo vim tomcat-users.xml
8. Go to line number 50
9. Yank(copy) line number 50,51 & 52
10. Paste the yanked lines in line number 56 and make the changes in role name and password 
11.  <role rolename="manager-gui"/>
  <role rolename="manager-script"/>
  <user username="tomcat" password="admin@123" roles="manager-gui,manager-script"/>
12. save and exit
13. Go to cd apache-tomcat-9.0.117/bin/
14. run ./startup.sh
15. Setup is now complete you will get the o/p "Tomcat started."
16. Now copy the server public ip from the instance
17. Open a new browser and paste the ip with portnumber : 8080 ( this is tomcat port number )

 **Your TOMCAT web-application server is setup**
  

  



