#!/usr/bin/perl
# Use mandatory external modules
use strict;
use warnings;
use DBI;
use Time::HiRes;
#use POSIX "strftime";
my $host         = 'localhost';
my $user         = 'root';
my $pass         = 'eschange1208';
my $port         = '3306';
my $max_behind_m = 120;
#my $check_log    = '/var/log/mysql_check_log';

# open  log--file
#open (FH, ">> $check_log") or die $!;

# connect to servers (this)
my $dbh = &MysqlConnect( $host, $port, $user, $pass );

sub MysqlConnect {
    my ( $host, $port, $user, $pass ) = @_;
    my $dsn = "DBI:mysql:host=$host;port=$port";
    return DBI->connect( $dsn, $user, $pass, { PrintError => 0 } );
}

