#!/usr/bin/perl
use warnings;
use diagnostics;
use Carp;
$ENV{PATH}="/usr/lib64/qt-3.3/bin:/usr/kerberos/sbin:/usr/kerberos/bin:/usr/local/sbin:/usr/local/bin:/sbin:/bin:/usr/sbin:/usr/bin:/usr/java/jdk1.6.0_21/bin:/root/bin";
use Net::FTP::Recursive;

$ftp=Net::FTP::Recursive->new("www.zhazh.com", Debug => 0);
$ftp->login("eschange123","eschange123");
$ftp->cwd()

 