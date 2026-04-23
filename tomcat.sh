# Run tomcat.sh script in terminal to setup tomcat 

sudo yum install java-17-amazon-corretto -y
sudo  wget https://downloads.apache.org/tomcat/tomcat-9/v9.0.117/bin/apache-tomcat-9.0.117.tar.gz
sudo  tar -zxvf apache-tomcat-9.0.117.tar.gz

# go to 

cd apache-tomcat-9.0.117/webapps/manager/META-INF/
sudo vim context.xml

# Delete line number 21 and 22 : save and exit
# go to 

 cd apache-tomcat-9.0.117/conf/
 sudo vim tomcat-users.xml

# Go to line number 50
#Yank(copy) line number 50,51 & 52
#Paste the yanked lines in line number 56 and make the changes in role name and password

 <role rolename="manager-gui"/>
  <role rolename="manager-script"/>
  <user username="tomcat" password="admin@123" roles="manager-gui,manager-script"/>

# save and exit 
# Go to 

cd apache-tomcat-9.0.117/bin/

#run 

./startup.sh 
