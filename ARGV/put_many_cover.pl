#! /usr/bin/perl
use Net::FTP;

$ftp = Net::FTP->new("211.151.185.38", Timeout => 30) or die "Could not connect.\n";
$username = "eschange123";
$password = "eschange123";
$ftp->login($username, $password) or die "Could not log in.\n";
$ftp->binary();
$ftp->cwd('/bbs');
$ftp->delete("file_fid_44.htm");
$ftp->delete("file_fid_47.htm");
$remote= "file_fid_44.htm";
$remote1= "file_fid_47.htm";
$local= "file_fid_44.htm";
$local1= "file_fid_47.htm";
$ftp->put($remote,$local)or die "Could not put remotefile:remote\n";
$ftp->put($remote1,$local1)or die "Could not put remotefile:remote\n";
$ftp->quit()