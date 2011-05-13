#! /usr/bin/perl
use Net::FTP;
$ftp = Net::FTP->new("211.151.185.38", Timeout => 30) or die "Could not connect.\n";
$username = "eschange";
$password = "eschange123";
$ftp->login($username, $password) or die "Could not log in.\n";
$remote= "com.zip";
$local = "com.zip1";
$ftp->get($remote,$local)or die "Could not put remotefile:remote\n";
$ftp->quit()

