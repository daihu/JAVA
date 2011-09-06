#!/usr/bin/perl
use Carp;
use diagnostics;
use warnings;

$file="d:/174.txt";
open(FH, $file) || die("Could not open file!");
while(<FH>){
	print if s/^/ 天赐买家/; #行首增加“天赐买家”
}
