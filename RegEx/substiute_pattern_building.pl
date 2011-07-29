#!/usr/bin/perl
use warnings;
use diagnostics;
use Carp;

#=~ or !=

while($_=<DATA>){
	print $_ if $_=~ /Igor/;
}

__DATA__
Steve Blenheim
Betty Boop
Igor Chevsky
Norma Cord
Jon DeLoach
Karen Evich

