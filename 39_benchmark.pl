<<<<<<< HEAD
	#!/usr/bin/perl
=======
#!/usr/bin/perl -w
>>>>>>> branch 'master' of ssh://git@github.com/daihu/JAVA.git
use warnings;
use diagnostics;
use Carp;

my $concurrency_num = "128";
my $iterations_num = "3";
my $queries_num="300000";
my $username="root";
my $password="eschange1208";
my $enginetype="myisam";
my $enginetype_i="innodb";


system  "/usr/local/mysql/bin/mysqlslap --defaults-file=/etc/my.cnf --concurrency=$concurrency_num  --iterations=$iterations_num --number-of-queries=$queries_num -u$username -p$password  --auto-generate-sql --auto-generate-sql-load-type=mixed --engine=$enginetype,$enginetype_i --auto-generate-sql-add-autoincrement  -S /tmp/mysql.sock --debug-info ";






 
