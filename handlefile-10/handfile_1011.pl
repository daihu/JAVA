#!/usr/bin/perl
use warnings;
use diagnostics;
use Carp;
use strict;

open(HANDLE, ">>newfile") || 
		die print "Can't open newfile: $!\n";
print HANDLE "Just appended \"hello world\" 
		to the end of newfile.\n";
