#!/usr/bin/perl
use Carp;
use warnings;
# The s modifier and the newline
$_="Sing a song of sixpence\nA pocket full of rye.\n";
print $& if /pence./s;
print $& if /rye\../s;
print if s/sixpence.A/twopence, a/s;
