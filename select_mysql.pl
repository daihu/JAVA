#!/usr/bin/perl
use warnings;
use diagnostics;
use Carp;
use DBI;

# Connect to target DB
my $dbh = DBI->connect( "DBI:mysql:database=zhazh;host=localhost",
	"root", "111111", { 'RaiseError' => 1 } );
$dbh->do("set names gbk ");

# query
my $sqr = $dbh->prepare(
	"select id ,resUrl,itemId,title from m_item_image
);
$sqr->execute();

 while ( my $ref = $sqr->fetchrow_hashref() ) {
 	    print " $ref->n" ;
}

$dbh->disconnect();
