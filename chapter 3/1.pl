#!/usr/bin/perl
use warnings;
use diagnostics;
#use strict;
use Carp;
print "What is you name ?\n";
chomp($name = <STDIN>);
print "Welcome ,$name ,are you ready to learn perl now ?\n";
chomp($response=<STDIN>);
if ($response eq "yes" or $response eq "y"){
	print "Great! let's get started learning perl by example.\n";
	
}
else {
	print "OK!!!!! Try again later\n";
}
$now=localtime();
print "$name you can this script on $now";
