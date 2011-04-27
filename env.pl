#!/usr/bin/perl
# Program name:env.cgi

print "Content Type:text/plain\n\n";
print "CGI/1.1 test script report:\n\n";
while(($key,$value)=each(%ENV)){
print "$key=$value\n";
}