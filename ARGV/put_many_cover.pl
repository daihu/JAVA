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
$ftp->delete("file_fid_2.htm");
$ftp->delete("file_fid_36.htm");
$ftp->delete("file_fid_37.htm");
$ftp->delete("file_fid_50.htm");

$remote= "file_fid_44.htm";
$remote1= "file_fid_47.htm";
$remote2="file_fid_2.htm";
$remote3="file_fid_36.htm";
$remote4="file_fid_37.htm";
$remote5="file_fid_50.htm";

$local= "file_fid_44.htm";
$local1= "file_fid_47.htm";
$local2="file_fid_2.htm";
$local3="file_fid_36.htm";
$local4="file_fid_37.htm";
$local5="file_fid_50.htm";

$ftp->put($remote,$local)or die "Could not put remotefile:remote\n";
$ftp->put($remote1,$local1)or die "Could not put remotefile:remote\n";
$ftp->put($remote2,$local2)or die "Could not put remotefile:remote\n";
$ftp->put($remote3,$local3)or die "Could not put remotefile:remote\n";
$ftp->put($remote4,$local4)or die "Could not put remotefile:remote\n";
$ftp->put($remote5,$local5)or die "Could not put remotefile:remote\n";
$ftp->quit()