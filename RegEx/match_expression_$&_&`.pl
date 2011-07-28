#!/usr/bin/perl
use warnings;
use diagnostics;
use Carp;

$_="San Francisco to Hong Kong\n";

/Francisco/;     # Save 'Francisco' in $& if it is found
print $&,"\n";

/to/;
print $',"\n";   # Save what comes before the string 'to'

/to\s/;          # \s represents a space
print $', "\n";  # Save what comes after the string 'to'

