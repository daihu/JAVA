#!/usr/bin/perl 
use warnings;
use diagnostics;
use Carp;
$data_file="wrestledata.txt";
open(DAT, $data_file) || die("Could not open file!");
@raw_data=<DAT>;
close(DAT);

