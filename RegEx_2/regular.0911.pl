#!/usr/bin/perl
use warnings;
use diagnostics;
use Carp;

# The POSIX character classes
require 5.6.0;
while(<DATA>){
	print if /[[:upper:]][[:alpha:]]+ [[:upper:]][[:lower:]]+/;
}
__DATA__
Steve Blenheim
Betty Boop
Igor Chevsky
Norma Cord
Jon DeLoach
Betty Boop
Karen Evich
