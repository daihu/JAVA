#!/usr/bin/perl -w
#file autoftpbackup.pl
#auto backup file
use Net::FTP;
$ftp = Net::FTP->new("174.121.21.12",Passive=>1)or die "Cannot connect to some.host.name: $@";
$ftp->login("daihu",'3xzZCoidvs')or die "Cannot login ", $ftp->message;
$ftp->cwd("/www")or die "Cannot change working directory ", $ftp->message;
#$ftp->dir();
$ftp->get("index.php")or die "get failed ", $ftp->message;
$ftp->quit;
