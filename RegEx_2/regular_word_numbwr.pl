#!/usr/bin/perl
use warnings;
use Carp;
use diagnostics;

# The bracket metacharacters and negation
while(<DATA>){
	print if / [^123]0/
}
__DATA__
Steve Blenheim 101 
Betty Boop 201 
Igor Chevsky 301 
Norma Cord 401 
Jonathan DeLoach 501
Karen Evich 601

