#!/usr/bin/perl
use warnings;
use strict;
use DBI;
my $user="daihu_daihu";
my $password="daihu";
my $database="daihu_db";
my $date=localtime();
my $filename="daihu.sql";
my $host="localhost";
system  "/usr/bin/mysqldump -u$user -p$password -h$host $database --skip-lock-tables >$filename";
open FILE,">>wordpress.log" or die "Can't open file:$!";
if( -s $filename){
    print FILE "$date file is backup ok!,\n";
}else{
    print FILE "$date file is backup fail!,\n";
}