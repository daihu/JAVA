#!/usr/bin/perl
use warnings;
use diagnostics;
use Carp;

#D:\bbs.it-adv.net\window>fetion --mobile=13911224264 --pwd=13810083864daihu --to
#=13911224264 --msg-gb=测试

my $mobile="13911224264";
my $password="13810083864daihu";
my $Recipient="13911224264";
my $content="北京市朝阳区东三环北路辛2号迪阳大厦1208室010-84536157转8009北京依思宸智信息技术有限公司";
system("D:/bbs.it-adv.net/window/fetion.exe --mobile=$mobile --pwd=$password --to=$Recipient --msg-gb=$content ");

