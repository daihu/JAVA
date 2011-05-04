#!/usr/bin/perl
use warnings;
use diagnostics;
use Carp;
# Backquotes and command substitution

print "The date is ", "date /T";     # Windows users: date /T
print "The date is 'data'", ".\n";    # Backquotes treated literally
$directory='cd';                      # Windows users: 'cd'
print " \nThe current directory is $directory.";
