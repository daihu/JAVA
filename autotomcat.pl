#!/usr/bin/perl
use strict;
use warnings;
use diagnostics;
use Carp;
my $file= "/var/run/jsvc.pid";
if( -s $file){
    print "Tomcat Service Already  started \n";
   }else{
    print "Tomcat Starting \n";
    system("/etc/init.d/tomcat start")
}
