#!/usr/bin/perl 
use warnings;
use diagnostics;
use Carp;
$data_file="wrestledata.txt";
open(FH, $data_file) || die("Could not open file!");
while(<FH>){
	print if /^perl/;
}


