#!/usr/bin/perl
use warnings;
use diagnostics;
@grades = (90,89,78,100,87);
print "The original array is: @grades\n";
print "The number of the last index is $#grades\n";

$#grades=3;
print "The array is truncated to 4 elements: @grades\n";

@grades=();
print "The array is completely truncated: @grades\n";
 
