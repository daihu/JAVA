#!/usr/bin/perl
use warnings;
use diagnostics;
use Carp;

while (<DATA>){
	print if s/\n/\t/;
}
__DATA__
Steve Blenheim
Betty Boop
Igor Chevsky
Norma Cord
Jon DeLoach
Betty Boop
Karen Evich
