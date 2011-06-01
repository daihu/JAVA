#!/usr/bin/perl
#use strict;
use warnings;
use diagnostics;
use Carp;
$count = 10;
 do {
 print "$count ";
 $count--;
 } while ($count >= 1);
 print "Blastoff.\n"; 