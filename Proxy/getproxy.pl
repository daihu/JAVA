#!/usr/bin/perl 
use warnings;
use diagnostics;
use LWP::Simple;
use strict;

my $page = get "http://www.cnproxy.com/proxy1.html";

for ( split/\n/,$page) {
    next unless /(\d+\.\d+\.\d+\.\d+).*\(":"\+(q\+d)\)/ or /(\d+\.\d+\.\d+\.\d+).*\(":"\+(z\+b\+k\+q)\)/;

    my $ip = $1;
    my @p = split/\+/,$2;
    my $port = @p > 2 ? 3128 : 80;

    print "$ip:$port\n";
}
