#!/usr/bin/perl
use warnings;
use diagnostics;

# Scalar, array, and hash assignment
$salary=50000;                   # Scalar assignment
@months=('Mar', 'Apr', 'May');   # Array assignment
%states= (                       # Hash assignment
    'CA' => 'California',
	'ME' => 'Maine',
	'MT' => 'Montana',
	'NM' => 'New Mexico',
	     );
print "$salary\n";
print "@months\n";
print "$months[0], $months[1], $months[2]\n";
print "$states{'CA'}, $states{'NM'}\n";
print $x + 3, "\n" ;             # $x just came to life!
print "***$name***\n" ;          # $name is born!
