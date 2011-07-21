#!/usr/bin/perl -w
use warnings;
use diagnostics;
use Carp;

my $concurrency_num = "128";
my $iterations_num = "3";
my $queries_num="300000";
my $username="root";
my $password="eschange1208";
my $enginetype="myisam";
my $enginetype_i="innodb";
my $database="zhazh";

system  "/usr/local/mysql/bin/mysqlslap -a --concurrency=$concurrency_num  --iterations=$iterations_num --number-of-queries=$queries_num -u$username -p$password  --auto-generate-sql --auto-generate-sql-load-type=mixed --engine=$enginetype,$enginetype_i --auto-generate-sql-add-autoincrement --create-schema=$database --number-int-cols=4 --number-char-cols=35 -S /tmp/mysql.sock --debug-info ";



 