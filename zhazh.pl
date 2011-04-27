#!/usr/bin/perl
print "Content-type: text/plain\n\n";
print "Monitoring System\n";
system("vmstat");
print "*" x 120,"\n";
system("df -H");

print "Login Name:",$ENV{'USER'},"\n";
print "SSH Client:",$ENV{'SSH_CLIENT'},"\n";
print "HostName:",$ENV{'HOSTNAME'},"\n";
print "location:",$ENV{'PWD'},"\n";
print "language:",$ENV{'LANG'},"\n";
print "Connection:",$ENV{'SSH_CONNECTION'},"\n";