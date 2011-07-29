#!/usr/bin/perl
use warnings;
use diagnostics;
use Carp;

$_="San Francisco to Hong Kong\n";

/Francisco  #searching for Francisco
/x;

print "Comments and space were removed and \$& is $&\n";