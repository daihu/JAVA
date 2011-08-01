#!/usr/bin/perl
use warnings;
use diagnostics;
use Carp;

$name="Tommy Tuttle";
print "Hello Tommy\n" if $name =~ /Tom/;
print "$name\n" if $name !~ /Tom/;

$name=~ s/T/M/;
print "$name\n";