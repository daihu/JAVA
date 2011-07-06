#!/usr/bin/perl 
system("tar -zcvf /opt/backup/ROOT.`date +%Y-%m-%d`.tar.gz /usr/apache-tomcat-6.0.29/webapps/ROOT")

