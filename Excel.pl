#!/usr/bin/perl -w
#Usage: output zichan from mysql to excel
#Made by yunhaozou@gmail.com,2010/12/20
#
use Spreadsheet::WriteExcel;
use DBI;
use Encode;
#
my $host = "127.0.0.1";  #mysql�����Ϣ
my $port = "3306";
my $db = "zichan_db";
my $user = "root";
my $password = "";
my $dsn = "dbi:mysql:database=$db:hostname=$host:port=$port";
#
my ($sec,$min,$hour,$mday,$mon,$year,$wday)=localtime(time);
$mon = $mon + 1;
$year = $year + 1900;
my $today = sprintf("%04d-%02d-%02d",$year,$mon,$mday); #���ڣ���~~�ܱ��ķ���
#
my $xls = Spreadsheet::WriteExcel->new("�ʲ�$today.xls");  #�½�һ��excel�ļ�
my $xlsheet = $xls->add_worksheet(decode("utf8","�ʲ�$today")); #�½�excel���
my $xlstyle = $xls->add_format();
$xlstyle->set_size("10");  #���������С
$xlstyle->set_align("center");  #����
#
$xlsheet->set_column("A:A",4);  #�����еĿ��
$xlsheet->set_column("B:B",16);
$xlsheet->set_column("C:C",16);
$xlsheet->set_column("D:D",10);
$xlsheet->set_column("E:E",36);
$xlsheet->set_column("F:F",16);
$xlsheet->set_column("G:G",16);
$xlsheet->set_column("H:H",8);
#
$xlsheet->write("A1", decode("utf8","���"), $xlstyle);  #���⣨excel����һ�У�
$xlsheet->write("B1", decode("utf8","�������к�"), $xlstyle);
$xlsheet->write("C1", decode("utf8","�����ͺ�"),$xlstyle);
$xlsheet->write("D1", decode("utf8","�����"), $xlstyle);
$xlsheet->write("E1", decode("utf8","������;"), $xlstyle);
$xlsheet->write("F1", decode("utf8","����IP"), $xlstyle);
$xlsheet->write("G1", decode("utf8","����IP"), $xlstyle);
$xlsheet->write("H1", decode("utf8","��ϵ��"), $xlstyle);
#
my $dbh = DBI->connect($dsn,$user,$password) or die "Couldn��t connect to database: " . DBI->errstr;  #����mysql
my $zcsql = "select sn,model,cab_no,func,intra_ip,man_addr,contact from equipment";
my $sth_zcquery = $dbh->prepare("$zcsql");
$sth_zcquery->execute();
my $num = 2;  #�Ӷ��п�ʼд���ݣ���һ��Ϊ���⣩
while(my @row = $sth_zcquery->fetchrow_array())
{
$xlsheet->write("A$num", decode("utf8",$num-1 ), $xlstyle); #��Ŵ�1��ʼ
$xlsheet->write("B$num", decode("utf8",$row[0]), $xlstyle); #д��excel
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
$dbh->disconnect(); #�Ͽ����ݿ�����
$xls->close();  #�ر�excel����