#!/bin/perl

use DBI;
#use warnings;
#use strict;
#use utf8;
#use bytes;



# Connect to target DB
my $dbh = DBI->connect("DBI:mysql:database=zhazh;host=211.151.185.40","zhazh","ESchange1208", 
{'mysql_enable_utf8'=>1 }) || die "Cannot connect to database:".DBI->errstr;
#feature use 'mysql_enable_utf8'=>1

 
#$dbh->do("SET character_set_client = 'utf8'");
#$dbh->do("set character_set_server = 'utf8'");
#$dbh->do("set character_set_database= 'utf8' ");
$dbh->do("set names gbk ");

# Insert one row 
#$x=2;
#do {
#$x++
#}while(x<=5);
#完成ID的循環和图片人循环
#二手笔记本的分类
my $rows = $dbh->do("INSERT INTO m_category (id ,groupName,iconUrl,labels,name,sortFlag,version) VALUES ('17', '笔记本', 'http://res.zhazh.com/files/systemfiles/categories/4.png', '1','二手笔记本', '0', '1')");
my $rows = $dbh->do("INSERT INTO m_category (id ,groupName,iconUrl,labels,name,sortFlag,version) VALUES ('18', '硬件配件', 'http://res.zhazh.com/files/systemfiles/categories/4.png', '1','二手笔记本', '0', '1')");
my $rows = $dbh->do("INSERT INTO m_category (id ,groupName,iconUrl,labels,name,sortFlag,version) VALUES ('19', '上网卡/无线网卡', 'http://res.zhazh.com/files/systemfiles/categories/4.png', '1','二手笔记本', '0', '1')");
my $rows = $dbh->do("INSERT INTO m_category (id ,groupName,iconUrl,labels,name,sortFlag,version) VALUES ('20', '其他', 'http://res.zhazh.com/files/systemfiles/categories/4.png', '1','二手笔记本', '0', '1')");
#二手手机通信
my $rows = $dbh->do("INSERT INTO m_category (id ,groupName,iconUrl,labels,name,sortFlag,version) VALUES ('17', '手机', 'http://res.zhazh.com/files/systemfiles/categories/4.png', '1','二手手机通信, '0', '1')");
my $rows = $dbh->do("INSERT INTO m_category (id ,groupName,iconUrl,labels,name,sortFlag,version) VALUES ('18', '手机号', 'http://res.zhazh.com/files/systemfiles/categories/4.png', '1','二手手机通信', '0', '1')");
my $rows = $dbh->do("INSERT INTO m_category (id ,groupName,iconUrl,labels,name,sortFlag,version) VALUES ('19', '手机配件', 'http://res.zhazh.com/files/systemfiles/categories/4.png', '1','二手手机通信', '0', '1')");
my $rows = $dbh->do("INSERT INTO m_category (id ,groupName,iconUrl,labels,name,sortFlag,version) VALUES ('20', '充值卡', 'http://res.zhazh.com/files/systemfiles/categories/4.png', '1','二手手机通信', '0', '1')");
my $rows = $dbh->do("INSERT INTO m_category (id ,groupName,iconUrl,labels,name,sortFlag,version) VALUES ('16', '其他', 'http://res.zhazh.com/files/systemfiles/categories/4.png', '1','二手通信', '0', '1')");



# query
my $sqr = $dbh->prepare("select id ,groupName,iconUrl,labels,name,sortFlag,version from m_category");
$sqr->execute();

while(my $ref = $sqr->fetchrow_hashref()) {
    print "$ref->{'id'}\n";
	print "$ref->{groupName}\n ";
	print "$ref->{iconUrl}\n ";
	print "$ref->{labels}\n ";
	print "$ref->{name}\n ";
	print "$ref->{sortFlag}\n ";
	print "$ref->{version}\n ";
	print "------------------------\n"
	
}




$dbh->disconnect();