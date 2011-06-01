#!/usr/bin/perl
use warnings;
use diagnostics;
use Carp;

$n=0;
while ($n<10){
	print $n;
	
}
if ($n==3){
	last;
}
$n++