#!/usr/bin/perl
use warnings;
use diagnostics;
use Carp;

@delete_file=qw(
d:/file.php 
d:/index.bak.php 
d:/index.php 
d:/sidebar.php
d:/1wp-config.php);

foreach $delete_files(@delete_file){
	unlink $delete_files or die "failed on $delete_files
	:$!";
}