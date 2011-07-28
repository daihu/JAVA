#!/usr/bin/perl
use warnings;
use diagnostics;
use Carp;

$_="xabcy\n";
print  if /abc/; 
print $_ if $_=~/abc/;