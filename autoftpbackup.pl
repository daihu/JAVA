#! /usr/bin/perl
use Net::FTP;
$ftp = Net::FTP->new("174.121.21.12", Timeout => 30) or die "Could not connect.\n";
$username = "daihu";
$password = "3xzZCoidvs";
$ftp->login($username, $password) or die "Could not log in.\n";
$ftp->mkdir("����");
$ftp->cwd("/����");
$local="E:/com.zip";
$ftp->put($local);
