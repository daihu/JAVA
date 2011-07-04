#!/bin/perl
use DBI;

#use warnings;
#use strict;
#use utf8;
#use bytes;
# Connect to target DB
my $dbh = DBI->connect( "DBI:mysql:database=zhazh;host=localhost",
	"root", "111111", { 'mysql_enable_utf8' => 1 } )
  || die "Cannot connect to database:" . DBI->errstr;

$dbh->do("set names gbk ");

# query
my $sqr = $dbh->prepare("update m_item_image set resUrl=replace(resUrl,'http://211.151.185.36','http://res.zhazh.com') where resUrl like 'http://211.151.185.36%'");
$sqr->execute();

while ( my $ref = $sqr->fetchrow_hashref() ) {
	print "$ref->{'id'}\n";
	print "$ref->{itemId}\n ";
	print "$ref->{resUrl}\n ";
	print "$ref->{version}\n ";
	print "------------------------\n"

}

$dbh->disconnect();
