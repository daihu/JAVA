#!/usr/bin/perl
use warnings;
use diagnostics;
use Carp;

$deletefile="/root/.navicat/system.reg";
if (-e $deletefile){
 unlink($deletefile);	
}else
{
	print "found unregister system.reg";
}
