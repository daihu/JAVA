#!/usr/bin/perl
use warnings;
use diagnostics;
use Carp;
open (SORT,"| sort") or die;
print SORT "dogs\ncats\nbirds\n";
