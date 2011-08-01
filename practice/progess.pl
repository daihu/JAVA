#!/usr/bin/perl -w
use warnings;
use diagnostics;
use Carp;

$n = 27;
for($i=1;$i<=$n;$i++){
proc_bar($i,$n);
select(undef, undef, undef, 0.2);
}
print "\n";
 
sub proc_bar{
local $| = 1;
my $i = $_[0] || return 0;
my $n = $_[1] || return 0;
print "\r\033[36m[\033[33m".("|" x int(($i/$n)*50)).
(" " x (50 - int(($i/$n)*50)))."\033[36m]";
printf("%2.1f%%\033[0m",$i/$n*100);
local $| = 0;
}