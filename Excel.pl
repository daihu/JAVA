#!/usr/bin/perl -w
#Usage: output zichan from mysql to excel
#Made by yunhaozou@gmail.com,2010/12/20
#
use Spreadsheet::WriteExcel;
use DBI;
use Encode;
#
my $host = "127.0.0.1";  #mysql相关信息
my $port = "3306";
my $db = "zichan_db";
my $user = "root";
my $password = "";
my $dsn = "dbi:mysql:database=$db:hostname=$host:port=$port";
#
my ($sec,$min,$hour,$mday,$mon,$year,$wday)=localtime(time);
$mon = $mon + 1;
$year = $year + 1900;
my $today = sprintf("%04d-%02d-%02d",$year,$mon,$mday); #日期，囧~~很笨的方法
#
my $xls = Spreadsheet::WriteExcel->new("资产$today.xls");  #新建一个excel文件
my $xlsheet = $xls->add_worksheet(decode("utf8","资产$today")); #新建excel表格
my $xlstyle = $xls->add_format();
$xlstyle->set_size("10");  #设置字体大小
$xlstyle->set_align("center");  #居中
#
$xlsheet->set_column("A:A",4);  #设置列的宽度
$xlsheet->set_column("B:B",16);
$xlsheet->set_column("C:C",16);
$xlsheet->set_column("D:D",10);
$xlsheet->set_column("E:E",36);
$xlsheet->set_column("F:F",16);
$xlsheet->set_column("G:G",16);
$xlsheet->set_column("H:H",8);
#
$xlsheet->write("A1", decode("utf8","序号"), $xlstyle);  #标题（excel表格第一行）
$xlsheet->write("B1", decode("utf8","机器序列号"), $xlstyle);
$xlsheet->write("C1", decode("utf8","机器型号"),$xlstyle);
$xlsheet->write("D1", decode("utf8","机柜号"), $xlstyle);
$xlsheet->write("E1", decode("utf8","机器用途"), $xlstyle);
$xlsheet->write("F1", decode("utf8","内网IP"), $xlstyle);
$xlsheet->write("G1", decode("utf8","管理IP"), $xlstyle);
$xlsheet->write("H1", decode("utf8","联系人"), $xlstyle);
#
my $dbh = DBI->connect($dsn,$user,$password) or die "Couldn’t connect to database: " . DBI->errstr;  #连接mysql
my $zcsql = "select sn,model,cab_no,func,intra_ip,man_addr,contact from equipment";
my $sth_zcquery = $dbh->prepare("$zcsql");
$sth_zcquery->execute();
my $num = 2;  #从二行开始写内容（第一行为标题）
while(my @row = $sth_zcquery->fetchrow_array())
{
$xlsheet->write("A$num", decode("utf8",$num-1 ), $xlstyle); #序号从1开始
$xlsheet->write("B$num", decode("utf8",$row[0]), $xlstyle); #写入excel
$xlsheet->write("C$num", decode("utf8",$row[1]), $xlstyle);
$xlsheet->write("D$num", decode("utf8",$row[2]), $xlstyle);
$xlsheet->write("E$num", decode("utf8",$row[3]), $xlstyle);
$xlsheet->write("F$num", decode("utf8",$row[4]), $xlstyle);
$xlsheet->write("G$num", decode("utf8",$row[5]), $xlstyle);
$xlsheet->write("H$num", decode("utf8",$row[6]), $xlstyle);
$num++;
}
#
$sth_zcquery->finish();
$dbh->disconnect(); #断开数据库连接
$xls->close();  #关闭excel操作