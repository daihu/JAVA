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


#≤‚ ‘
#



