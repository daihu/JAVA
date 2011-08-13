#!/usr/bin/perl
use DBI;
my @driver=DBI->available_drivers();
print join(",", @driver);