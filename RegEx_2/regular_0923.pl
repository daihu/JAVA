#!/usr/bin/perl
use warnings;
use diagnostics;
use Carp;

$_="abcdefghijklmnopqrstuvwxyz";
s/[a-z]+/XXX/;
print $_, "\n";

$_="abcdefghijklmnopqrstuvwxyz";
s/[a-z]+?/XXX/;
print $_, "\n";
