#!/usr/bin/perl 
use warnings;
use diagnostics;
use Carp;


use strict;
use Net::Telnet;

my $p = Net::Telnet->new();
my $h = shift || "www.zhazh.com";

$p->open(Host => $h, Port =>80);
$p->print("GET /\n");
while(my $line = $p->getline())
{
        print $line;
}
exit 0;