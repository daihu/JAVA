 #!/usr/bin/perl
use warnings;
use diagnostics;
use Carp;
$ENV{PATH}="/usr/lib64/qt-3.3/bin:/usr/kerberos/sbin:/usr/kerberos/bin:/usr/local/sbin:/usr/local/bin:/sbin:/bin:/usr/sbin:/usr/bin:/usr/java/jdk1.6.0_21/bin:/root/bin";
$HOST="211.151.185.39";
$USER="eschange123";
$PASS="eschange123";
$LCD="lftp.pl";
$RCD="lftp.pl";
/usr/bin/lftp<< EOF
open ftp://$USER:$PASS@$HOST
mirror $RCD $LCD
EOF

 lftp 211.151.185.38:21 -u eschange123,eschange123