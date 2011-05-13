#!/usr/bin/perl
use strict;
use warnings;
use diagnostics;
use Carp;
my $stop= "/var/run/jsvc.pid";
if( -s $stop){
    print "Tomcat Service Staring Please Stoped Service \n";
   }else{
    print "Tomcat Serverce Stoped\n";
}

system("/etc/init.d/tomcat stop");
system("unzip /usr/apache-tomcat-6.0.29/webapps/BizServ/WEB-INF/classes/com.zip -d /usr/apache-tomcat-6.0.29/webapps/BizServ/WEB-INF/classes/ ");
system("cd /usr/apache-tomcat-6.0.29/webapps/BizServ/WEB-INF/classes");
system("chown zhazh01:zhazh01 com -R");
system("/etc/init.d/tomcat start");


