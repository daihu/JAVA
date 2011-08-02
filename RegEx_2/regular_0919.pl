#!/usr/bin/perl
use warnings;
use diagnostics;
use Carp;

while(<DATA>){
	print if s/\w+/X/g;
}
__DATA__
Steve Blenheim 1.10 
Betty Boop .5 
Igor Chevsky 555.100
Norma Cord 4.01
Jonathan DeLoach .501
Karen Evich 601
