#!/usr/bin/perl
 use DBI;
$dsn = dbi:mysql:northwind; $username="root"; $password="111111";
$dbh = DBI->connect($dsn, $user, $password,{ PrintError => 0, RaiseError => 1, AutoCommit => 0 });
      