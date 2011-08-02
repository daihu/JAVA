#!/usr/bin/perl
use warnings;
use diagnostics;
use Carp;

while (<DATA>){
	print if /Steve|Betty|Jon/
}

__DATA__
Steve Blenheim
Betty Boop
Igor Chevsky
Norma Cord
Jonathan DeLoach
Karen Evich

