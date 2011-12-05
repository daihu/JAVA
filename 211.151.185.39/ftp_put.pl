#! /usr/bin/perl
use Net::FTP;
$ftp = Net::FTP->new("211.151.185.38", Timeout => 30) or die "Could not connect.\n";
$username = "eschange123";
$password = "eschange123";
$ftp->login($username, $password) or die "Could not log in.\n";
$ftp->binary();
 $ftp->cwd('/bbs');
$remote= "test.pl";
$local = "test.pl";
$ftp->put($remote,$local)or die "Could not put remotefile:remote\n";
$ftp->quit()
           