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
my $check_log    = '/var/log/mysql_check_log';

# open  log--file
open (FH, ">> $check_log") or die $!;

# connect to servers (this)
my $dbh = &MysqlConnect( $host, $port, $user, $pass );

# Get slave info
my $slave_status = &MysqlQuery( $dbh, 'show slave status');
#print FH "ERROR: SQL Query Error: " . $this_dbh->errstr unless ($slave_status);
my $Slave_IO              = $slave_status->{Slave_IO_Running};
my $Slave_SQL             = $slave_status->{Slave_SQL_Running};
my $Seconds_Behind_Master = $slave_status->{Seconds_Behind_Master};
print "IO:\t\t $Slave_IO\n";
print "SQL:\t\t $Slave_SQL\n";
print "Behind_Master:\t $Seconds_Behind_Master\n";

sub MysqlConnect {
    my ( $host, $port, $user, $pass ) = @_;
    my $dsn = "DBI:mysql:host=$host;port=$port";
    return DBI->connect( $dsn, $user, $pass, { PrintError => 0 } );
}

sub MysqlQuery {
    my ( $dbh, $query ) = @_;
    my $sth = $dbh->prepare($query);
    my $res = $sth->execute;
    return undef unless ($res);
    my $row = $sth->fetchrow_hashref;
    $sth->finish;
    return $row;
}

#-----------------------------------------------------------------
sub ExecuteQuery {
    my ( $dbh, $query ) = @_;
    my $sth = $dbh->prepare($query);
    return $sth->execute;
}

#-----------------------------------------------------------------
sub current_time {
    my $time_now = POSIX::strftime( "[%Y-%m-%d %H:%M:%S]", localtime );
    return $time_now;
}