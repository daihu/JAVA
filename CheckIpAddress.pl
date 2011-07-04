#!/usr/bin/perl
use warnings;
use diagnostics;
use Carp;

$data_file="localhost_access_log.2011-06-25.txt";
open(FH,$data_file) || die("Could not open file!");
 while(<FH>){
 print if m/^ERROR/ ;
}
     


