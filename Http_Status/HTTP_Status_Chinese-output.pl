#!/usr/bin/perl
use warnings;
use diagnostics;
use Carp;
use Encode;

 use Net::Telnet ();

$host="www.zhazh.com";
$port="80"; 
 
$t = new Net::Telnet (Timeout => 10 ); 
$t->open(Host =>$host,Port =>$port);
$t->print("GET /\n");
while(my $line = $t->getline())
{
        print encode("gbk",decode ("utf-8",$line));
}