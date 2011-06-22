#!/usr/bin/perl
use warnings;
use diagnostics;
use strict;
use Carp;

# split tomcat output file Catalina.out
# 2011-6-22 14:18:14 org.apache.catalina.core.StandardWrapperValve invoke
my ($year,$mon,$day)=(localtime)[5,4,3];
$year+=1900;
$mon+=1;
$day-=1;
#$day=1;
my $today=sprintf("%04u-%02u-%02u",$year,$mon,$day);
print("$today");

