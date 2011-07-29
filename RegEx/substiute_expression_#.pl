#!/usr/bin/perl
use warnings;
use diagnostics;
use Carp;

while(<DATA>){
	 s#Igor#Boris#;
	 print;
}

__DATA__
Steve Blenheim
Betty Boop
Igor Chevsky
Norma Cord
Jon DeLoach
Karen Evich