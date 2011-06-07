#!/usr/bin/perl
use warnings;
use diagnostics;
use Carp;
use DBI;

my $username="root";
my $password="111111";
my $host="localhost";
my $database="mysql";
my $driver="DBI:mysql";

# Connect to target DB
my $dbh = DBI->connect("DBI:mysql:database=mysql;host=localhost","root","111111", {'RaiseError' => 1});


my $sqr = $dbh->prepare("SELECT * FROM user");
$sqr->execute();

while(my $ref = $sqr->fetchrow_hashref()) {
    print "$ref->n";
}

$dbh->disconnect();
