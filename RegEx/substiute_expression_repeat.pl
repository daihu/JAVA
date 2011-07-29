#!/usr/bin/perl
use warnings;
use diagnostics;
use Carp;

$_="knock at heaven's door.\n";
  s/knock/"knock, " x 2 . "knocking"/ei;
  print 