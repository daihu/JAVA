#!/usr/bin/perl
use warnings;
use diagnostics;
use Carp;
#delete single file
#unlink "d:/daihu.gnucash.20110216100625.gnucash";
#delete many extent name files
#unlink glob "d:/*.txt"
my $delete_file= unlink "d:/timetable.ics";
#unlink $delete_file;
print "i delete $delete_file file just now.\n";
