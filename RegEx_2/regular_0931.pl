#!/usr/bin/perl
use warnings;
use diagnostics;
use Carp;

# Clustering or grouping
$_=qq/The baby says, "Mama, Mama, I can say Papa!"\n/;
print if s/(ma|pa)+/goo/gi;
