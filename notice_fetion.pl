#!/usr/bin/perl
use warnings;
use diagnostics;
use Carp;

#D:\bbs.it-adv.net\window>fetion --mobile=13911224264 --pwd=13810083864daihu --to
#=13911224264 --msg-gb=����

my $mobile="13911224264";
my $password="13810083864daihu";
my $Recipient="13911224264";
my $content="�����г�������������·��2�ŵ�������1208��010-84536157ת8009������˼�����Ϣ�������޹�˾";
system("D:/bbs.it-adv.net/window/fetion.exe --mobile=$mobile --pwd=$password --to=$Recipient --msg-gb=$content ");

