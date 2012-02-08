#!/usr/bin/perl
use warnings;
use diagnostics;
use Carp;

$data_file="localhost_access_log.2012-02-08.txt";
open(FH,$data_file) || die("Could not open file!");
 while(<FH>){
 	 print if m/200/ ;
}
     