#!/usr/bin/perl
use DBI;
use warnings;
use diagnostics;

# Connect to target DB
my $dbh = DBI->connect("DBI:mysql:database=zhazh;host=211.151.185.40","zhazh","ESchange1208", 
{'mysql_enable_utf8'=>1 }) || die "Cannot connect to database:".DBI->errstr;
$dbh->do("set names gbk ");
#query
#my $sqr = $dbh->prepare("select adid,id,mobile,name,createtime from m_user where adid<> and DATE_FORMAT(createtime,'%m-%d') >= '06-20' and DATE_FORMAT(createtime,'%m-%d') <= '12-31'");
my $sqr = $dbh->prepare("select adid,id,mobile,name,createtime from m_user where adid and createtime>2011-06-21");
$sqr->execute();

while(my $ref = $sqr->fetchrow_hashref()) {
    print "$ref->{'adid'} ";
	print "$ref->{id}";
	print "$ref->{mobile}";
	print "$ref->{name}";
	print "$ref->{createname}\n";
	print "------------------------\n";
	
}
	
	$dbh->disconnect();