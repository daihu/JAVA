#!/usr/bin/perl
#file autoftpbackup.pl
#auto backup file
use Net::FTP;
$ftp = Net::FTP->new("174.121.21.12",Timeout=> 300) or die "Could not connect.\n";
$username="daihu";
$password="3xzZCoidvs";
$ftp->login($username,$password) or die "Could not connect.\n";
$ftp->pwd();


