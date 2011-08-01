#!/usr/bin/perl
use strict;
use LWP::Simple;
my $url = 'http://www.baidu.com';
my $go = get($url);
print "$go\n";