#* */1 * * *  perl /usr/local/src/forum.pl 44
# minutes
#*/2 * * * *  perl /usr/local/src/forum_44.pl
#01 3 * * *	root /usr/sbin/ntpdate ntp.ubuntu.com

#211.151.185.39
#*       6       *       *       *       /opt/backup/backup.pl
#*/5     *        *      *        *       php /usr/www/cacti.zhazh.com/poller.php > /dev/null 2>&1
#*/1     *        *       *       *        perl /usr/local/src/forum.pl 44



#forum.pl 44
