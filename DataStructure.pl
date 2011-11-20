use strict;
use warnings;
use Data::Dumper;

my @now = localtime( time() );

print Dumper(@now);
