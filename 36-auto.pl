#!/usr/bin/perl
use strict;
use warnings;
use diagnostics;
use Carp;
system("/etc/init.d/tomcat stop");
print "Tomcat Stoping\n";
system("unzip /usr/apache-tomcat-6.0.29/webapps/BizServ/WEB-INF/classes/newcom.zip -d /usr/apache-tomcat-6.0.29/webapps/BizServ/WEB-INF/classes/ ");
print "Exact OK\n";
system("chown zhazh01:zhazh01/usr/apache-tomcat-6.0.29/webapps/BizServ/WEB-INF/classes/com -R");
system("/etc/init.d/tomcat start");