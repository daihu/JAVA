#!/bin/perl
use DBI;
#use warnings;
#use strict;
#use utf8;
#use bytes;
# Connect to target DB
my $dbh = DBI->connect( "DBI:mysql:database=zhazh;host=211.151.185.40",
	"zhazh", "ESchange1208", { 'mysql_enable_utf8' => 1 } )
  || die "Cannot connect to database:" . DBI->errstr;

$dbh->do("set names gbk ");

# query
$contentdel="此评论已被删除!";


my $sqr = $dbh->prepare("update m_newmessage set commentInfo='$contentdel'
where commentInfo like  '%baixing.com%'");

my $sqr= $dbh->prepare("update m_newmessage set description='$contentdel'
where description like  '%baixing.com%'");
$sqr->execute();


my $sqr= $dbh->prepare("update m_newmessage set description='$contentdel'
where description like  '%baixing.com%'");
$sqr->execute();

$dbh->disconnect();