#!/usr/bin/perl
use Carp;
use diagnostics;
use warnings;

$file="d:/174.txt";
open(FH, $file) || die("Could not open file!");
while(<FH>){
	print if s/^/ ������/; #�������ӡ������ҡ�
}
