#!/usr/bin/perl
use warnings;
use diagnostics;
use Carp;

while(<DATA>){
	print if /Betty/;
}

__DATA__
Steve Blenheim
Betty Boop
Igor Chevsky
Norma Cord
Jon DeLoach
Karen Evich