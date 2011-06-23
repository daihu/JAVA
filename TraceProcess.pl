#!/usr/bin/perl
use IO::Socket;
use IO::File;
use MIME::Base64;

##############################
# Constant define (configure)
##############################
# mail config
use constant MAIL_ADDR => ('to'=>'paul|@zhazh.com', 'from'=>'paul|@zhazh.com');
use constant SMTP_INFO => ('host'=>'mail.zhazh.com', 'user'=>'paul@zhazh.com', 'password'=>'daihu123',
'debug'=>1, 'bufsize'=>1024);
# common config
use constant MD5SUM_FILE => '/tmp/__monitor_md5sum_hash';
use constant APACHE_LOG_PATH => '/usr/apache-tomcat-6.0.29/logs/catlina.out';
# tomcat
use constant APACHE_PORT => 80;
use constant APACHE_SERVERS => ('www.zhazh.com', 'api.zhazh.com');
# mysql
#use constant MYSQL_PORT => 3306;
#use constant MYSQL_SERVERS => ('db1.example.com', 'db2.example.com');
# memcache
use constant MEMCACHE_PORT => 11211;
use constant MEMCACHE_SERVERS => ('cache1.example.com', 'cache2.example.com');
# search
use constant SEARCH_PORT => 8000;
use constant SEARCH_SERVERS => ('search1.example.com');


##############################
# Server port is alive check
##############################
sub check_server_alive {
my($server, $port) = @_;

$sock = IO::Socket::INET->new(PeerAddr=>$server, PeerPort=>$port, Proto=>'tcp', Timeout=>3);
if (!$sock){
return 0;
}
$sock->close();
return 1;
}

##############################
# Check process is exist
##############################
sub check_process_exist {
my $proc_name = shift;
$line = `/bin/ps auxw | /bin/grep $proc_name | /bin/grep -v grep | /usr/bin/wc -l`;
$line =~ s/^s+|s+$//g;
if ($line == 0){
return 0;
}
return 1;
}

##############################
# Check file md5 fingerprint
##############################
sub check_file_md5sum {
my $io, $line;
$filename = shift;
@arr = split(/s/, `/usr/bin/md5sum $filename`);
$filehash = shift(@arr);
$io = IO::File->new();
$io->open(MD5SUM_FILE, O_RDWR);
if (!($line = $io->getLine())){
$io->syswrite($filehash);
$io->close;
return true;
}
if ($line != $filehash){
$io->truncate(0);
$io->syswrite($filehash);
$io->close;
return true;
}
return true;
}

##############################
# SMTP execute command
##############################
sub smtp_cmd {
my ($sock, $cmd, $blocking) = @_;
my %smtpinfo = SMTP_INFO;
my $buf, $bufsize = $smtpinfo{'bufsize'}, $debug=$smtpinfo{'debug'};

$sock->syswrite($cmd);
if ($debug == 1){
print ">>> $cmd ";
}
if ($blocking == 1){
$sock->sysread($buf, $bufsize);
if ($debug){
print "£¼£¼£¼ $buf";
}
}
}

##############################
# Send notice mail
##############################
sub send_mail {
my ($subject, $content) = @_;
my $sock;
my %mailaddr = MAIL_ADDR;
my %smtpinfo = SMTP_INFO;
my $debug = $smtpinfo{'debug'};

# Count date time 
($sec, $min, $hour, $day, $mon, $year, $wday, $yday, $isdst) = localtime(time());
$datetime = sprintf("%s-%s-%s %s:%s:%s", "20".substr($year,1,2), length($mon)==1?"0$mon":$mon, length($day)==1?"0$day":$day, length($hour)==1?"0$hour":$hour, length($min)==1?"0$min":$min, length($sec)==1?"0$sec":$sec);
$subject .= "[$datetime]";

# Connect to SMTP server
$sock = IO::Socket::INET->new(PeerAddr=>$smtpinfo{'host'}, PeerPort=>25, Proto=>'tcp', Timeout=>10);
$sock->blocking(1);

# Send smtp command
if ($debug == 1){
print "<<< ". $sock->sysread($buf, $smtpinfo{'bufsize'});
}
smtp_cmd($sock, "HELO locahost ", 1);
smtp_cmd($sock, "AUTH LOGIN ", 1);
smtp_cmd($sock, encode_base64($smtpinfo{'user'}), 1);
smtp_cmd($sock, encode_base64($smtpinfo{'password'}), 1);
smtp_cmd($sock, "MAIL FROM: £¼". $mailaddr{'from'} ."> ", 1);
smtp_cmd($sock, "RCPT TO: £¼". $mailaddr{'to'} ."> ", 1);
smtp_cmd($sock, "DATA ", 1);
smtp_cmd($sock, "From: ". $smtpinfo{'from'} ." ", 0);
smtp_cmd($sock, "To: ". $smtpinfo{'to'} ." ", 0);
smtp_cmd($sock, "Subject: $subject ", 0);
smtp_cmd($sock, "$content ", 0);
smtp_cmd($sock, " . ", 1);
smtp_cmd($sock, "QUIT ", 0);
$sock->close();

return 1;
}

##############################
# Check server alive main
##############################
sub monitor_main {
# check apache
foreach $item (APACHE_SERVERS) {
if (!check_server_alive($item, APACHE_PORT)) {
send_mail("$item apache server is down", "$item apache server is down. please timely restoration");
}
}
# check mysql
foreach $item (MYSQL_SERVERS) {
if (!check_server_alive($item, MYSQL_PORT)) {
send_mail("$item mysql server is down", "$item mysql server is down. please timely restoration");
}
}
# check memcache
foreach $item (MEMCACHE_SERVERS) {
if (!check_server_alive($item, MEMCACHE_PORT)) {
send_mail("$item memcache server is down", "$item memcache server is down. please timely restoration");
}
}
# check search
foreach $item (SEARCH_SERVERS) {
if (!check_server_alive($item, SEARCH_PORT)) {
send_mail("$item search server is down", "$item search server is down. please timely restoration");
}
}
}


##############################
# Main running
##############################

monitor_main(); 