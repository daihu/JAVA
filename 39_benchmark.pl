#!/usr/bin/perl
use warnings;
use diagnostics;
use Carp;

#������������
$concurrency_num=128;
#��������
$iterations_num=3;

#/usr/local/mysql/bin/mysqlslap -a  --concurrency=128  --iterations=3  --number-of-queries=50000  -uroot  -peschange1208 -S /tmp/mysql.sock --debug-info