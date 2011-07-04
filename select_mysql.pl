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
my $sqr = $dbh->prepare("select id ,itemId,resUrl,version from m_item_image");
$sqr->execute();

while ( my $ref = $sqr->fetchrow_hashref() ) {
	print "$ref->{'id'}\n";
	print "$ref->{itemId}\n ";
	print "$ref->{resUrl}\n ";
	print "$ref->{version}\n ";
	print "------------------------\n"

}

$dbh->disconnect();
