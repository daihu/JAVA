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
#���ID��ѭ�h��ͼƬ��ѭ��
#���ֱʼǱ��ķ���
my $rows = $dbh->do("INSERT INTO m_category (id ,groupName,iconUrl,labels,name,sortFlag,version) VALUES ('17', '�ʼǱ�', 'http://res.zhazh.com/files/systemfiles/categories/4.png', '1','���ֱʼǱ�', '0', '1')");
my $rows = $dbh->do("INSERT INTO m_category (id ,groupName,iconUrl,labels,name,sortFlag,version) VALUES ('18', 'Ӳ�����', 'http://res.zhazh.com/files/systemfiles/categories/4.png', '1','���ֱʼǱ�', '0', '1')");
my $rows = $dbh->do("INSERT INTO m_category (id ,groupName,iconUrl,labels,name,sortFlag,version) VALUES ('19', '������/��������', 'http://res.zhazh.com/files/systemfiles/categories/4.png', '1','���ֱʼǱ�', '0', '1')");
my $rows = $dbh->do("INSERT INTO m_category (id ,groupName,iconUrl,labels,name,sortFlag,version) VALUES ('20', '����', 'http://res.zhazh.com/files/systemfiles/categories/4.png', '1','���ֱʼǱ�', '0', '1')");
#�����ֻ�ͨ��
my $rows = $dbh->do("INSERT INTO m_category (id ,groupName,iconUrl,labels,name,sortFlag,version) VALUES ('17', '�ֻ�', 'http://res.zhazh.com/files/systemfiles/categories/4.png', '1','�����ֻ�ͨ��, '0', '1')");
my $rows = $dbh->do("INSERT INTO m_category (id ,groupName,iconUrl,labels,name,sortFlag,version) VALUES ('18', '�ֻ���', 'http://res.zhazh.com/files/systemfiles/categories/4.png', '1','�����ֻ�ͨ��', '0', '1')");
my $rows = $dbh->do("INSERT INTO m_category (id ,groupName,iconUrl,labels,name,sortFlag,version) VALUES ('19', '�ֻ����', 'http://res.zhazh.com/files/systemfiles/categories/4.png', '1','�����ֻ�ͨ��', '0', '1')");
my $rows = $dbh->do("INSERT INTO m_category (id ,groupName,iconUrl,labels,name,sortFlag,version) VALUES ('20', '��ֵ��', 'http://res.zhazh.com/files/systemfiles/categories/4.png', '1','�����ֻ�ͨ��', '0', '1')");
my $rows = $dbh->do("INSERT INTO m_category (id ,groupName,iconUrl,labels,name,sortFlag,version) VALUES ('16', '����', 'http://res.zhazh.com/files/systemfiles/categories/4.png', '1','����ͨ��', '0', '1')");



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