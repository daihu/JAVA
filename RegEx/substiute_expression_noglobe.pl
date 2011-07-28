#!/usr/bin/perl
use warnings;
use diagnostics;
use Carp;

while(<DATA>){
	print if s/Tom/Christian/;
}

__DATA__
Tom Dave Dan Tom
Betty Tom Henry Tom
Igor Norma Tom Tom
