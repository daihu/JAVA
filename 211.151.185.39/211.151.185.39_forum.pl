#!/bin/perl
use warnings;
use DBI;
my $fid  = "$ARGV[0]";
my $url  = "";
my $link = "<li><a href='http://club.zhazh.com/forum.php?mod=viewthread&tid=";

my $dbh = DBI->connect( "DBI:mysql:database=vote;host=211.151.185.39",
	"vote", "vote", { 'mysql_enable_utf8' => 1 } )
  || die "Cannot connect to database:" . DBI->errstr;

$dbh->do("set names utf8");
my $sqr =
  $dbh->prepare( "select * from pre_forum_post "
	  . ( $fid > 0 ? "where fid=$fid" : "" )
	  . "   order by  tid desc limit 0,7  " );

$sqr->execute();

while ( my $ref = $sqr->fetchrow_hashref() ) {
	$url =
	    $url . $link. $ref->{'tid'} . "'>". $ref->{'subject'}
	  . "</a></li>";



}
$dbh->disconnect();
$out = "file_fid_.$fid.htm";
open OUT, ">:encoding(utf8)", $out or die $!;
print OUT $url;
