#!/usr/bin/perl
use diagnostics;
use strict;
use Carp;
use DBI;
system("/usr/bin/mysqldump -uroot -peschange1208 -h127.0.0.1 --default-character-set=utf8 -B zhazh >/opt/`date +%Y%m%d`.sql ");