#!/bin/perl
use warnings;

#use strict;
use DBI;
my $fid  = "0";
my $url  = "";
my $link = "<li><a href='http://club.zhazh.com/forum.php?mod=viewthread&tid=";

my $dbh = DBI->connect( "DBI:mysql:database=vote;host=211.151.185.39",
	"vote", "ESChange1208", { 'mysql_enable_utf8' => 1 } )
  || die "Cannot connect to database:" . DBI->errstr;

$dbh->do("set names utf8");
my $sqr =
  $dbh->prepare( "select * from pre_forum_post "
	  . ( $fid > 0 ? "where fid=$fid" : "" )
	  . "   order by  tid desc " );

$sqr->execute();

while ( my $ref = $sqr->fetchrow_hashref() ) {
	$url =$url . $link . $ref->{'tid'} . "'>" . $ref->{'subject'} . "</a></li>";

	#    print "$url\n";

	#print "$ref->{subject}\n ";
	#       print "$ref->{iconUrl}\n ";
	#       print "$ref->{labels}\n ";
	#       print "$ref->{name}\n ";
	#       print "$ref->{sortFlag}\n ";
	#       print "$ref->{version}\n ";
	#       print "------------------------\n"

}
$dbh->disconnect();
$out = "file_fid_" . $fid;
open OUT, ">:encoding(utf8)", $out or die $!;
print OUT $url;
