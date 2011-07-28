#!/usr/bin/perl
use warnings;
use diagnostics;
use Carp;

$x=1;

print $x++,"\n" while $x!=5;