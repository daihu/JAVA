#!/usr/bin/perl
use warnings;
use diagnostics;
use Carp;

while(<DATA>){
	print if m{Karen E}
}
$name="Jon";
$_=qq/$name is a good sport.\n/;
print if m'$name';
print if m"$name";

__DATA__
Steve Blenheim
Betty Boop
Igor Chevsky
Norma Cord
Jon DeLoach
Karen Evich