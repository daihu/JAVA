#!//usr/bin/perl
use warnings;
use diagnostics;
use Carp;

open (F,"dir |") or die;
while (<F>){
	print;
}