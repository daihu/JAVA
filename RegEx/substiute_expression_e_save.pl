#!/usr/bin/perl
use warnings;
use diagnostics;
use Carp;

$_="5000";
s/$_/$& * 2/e;
print "the new value is $_\n";



$_="knock at heaven's door.\n";
  s/knock/"$&, " x 2 . "$&ing"/ei;
  print 