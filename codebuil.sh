yum install java-1.8* -y git -y
yum install maven -y
wget https://dlcdn.apache.org/tomcat/tomcat-8/v8.5.88/bin/apache-tomcat-8.5.88.tar.gz
tar -xf apache-tomcat-8.5.88.tar.gz
bash apache-tomcat-8.5.88/bin/startup.sh
git clone https://github.com/ramdevops03/Development-Team-Repo.git
cd Development-Team-Repo
mvn clean
mvn package
cd target
cp web.war /root/apache-tomcat-8.5.88/webapps
