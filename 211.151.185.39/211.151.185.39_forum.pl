#!/usr/bin/perl
$ENV{PATH}="/usr/lib64/qt-3.3/bin:/usr/kerberos/sbin:/usr/kerberos/bin:/usr/local/sbin:/usr/local/bin:/sbin:/bin:/usr/sbin:/usr/bin:/usr/java/jdk1.6.0_21/bin:/root/bin";
use warnings;
#use strict;
use DBI;
my $fid=" $ARGV[0]";
my $url="";
my $link="<li><a href='http://club.zhazh.com/forum.php?mod=viewthread&tid=";

my $dbh = DBI->connect( "DBI:mysql:database=vote;host=localhost",
        "vote", "vote", { 'mysql_enable_utf8' => 1 } )
  || die "Cannot connect to database:" . DBI->errstr;

 $dbh->do("set names utf8");
my $sqr = $dbh->prepare("select * from pre_forum_post ".($fid>0?"where fid=$fid":"")."   order by  tid desc limit 0,7 ");

$sqr->execute();

while(my $ref = $sqr->fetchrow_hashref()) {
         $url=$url.$link.$ref->{'tid'}."'>".$ref->{'subject'}."</a></li>";
#    print "$url\n";

        #print "$ref->{subject}\n ";
#       print "$ref->{iconUrl}\n ";
#       print "$ref->{labels}\n ";
#       print "$ref->{name}\n ";
#       print "$ref->{sortFlag}\n ";
#       print "$ref->{version}\n ";
#       print "------------------------\n"

}
$dbh->disconnect();
$out = "/usr/local/src/file_fid_$fid.htm";
open OUT, ">", $out or die $!;
print OUT $url;