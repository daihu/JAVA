#!/usr/bin/perl
$ENV{'PATH'}='/bin:/usr/bin';
/usr/bin/perl /usr/local/src/forum_49.pl  >>/root/export.log 2>&1
$ENV{PATH} ="/usr/lib64/qt-3.3/bin:/usr/kerberos/sbin:/usr/kerberos/bin:/usr/local/sbin:/usr/local/bin:/sbin:/bin:/usr/sbin:/usr/bin:/usr/java/jdk1.6.0_21/bin:/root/bin";
/usr/bin/perl /usr/local/src/forum_2.pl  >>/root/export.log 2>&1




0	6	*	*	*	/bin/bash /opt/mysqlbackup.sh

#!/bin/bash
#auther:paul
#/usr/local/mysql/bin/mysqldump -h localhost  -uzhazh -pESchange1208 --single-transaction --default-character-set=utf8  zhazh >/opt/backup/$(date -d yesterday +%Y-%m-%d)_zhazh_db.sql