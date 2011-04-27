#!/usr/bin/perl
#file autoftpbackup.pl
#auto backup file
use Net::FTP;
$ftp = Net::FTP->new("174.121.21.12",Timeout=> 30) or die "Could not connect.\n";
$username="daihu";
$password="3xzZCoidvs";
$ftp->login($username,$password) or die "Could not connect.\n";
$ftp->cwd('/www');
$remotefile = "index.php";
# $localfile = "autoftpbackup.pl";
# $ftp->put($localfile,$remotefile) or die "Could not put remotefile:$remotefile\n";
$ftp->get($remotefile) or die "Could not put localfile:$localfile\n";
$ftp->quit;

