#!/usr/bin/perl
use warnings;
use diagnostics;
use Carp;

while(<DATA>){
	print if /\W\w\w\w\w\W/
}


__DATA__
Steve Blenheim 101 
Betty Boop 201 
Igor Chevsky 301 
Norma Cord 401 
Jonathan DeLoach 501
Karen Evich 601

