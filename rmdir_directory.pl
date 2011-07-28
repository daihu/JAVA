#!/usr/bin/perl
#author::paul
use warnings;
use diagnostics;
use Carp;

#$file_del="test/2/1";
#unlink "$file_del" or die "cannot delte file $file_del:$!";
$directory_del="test";
rmdir glob "$directory_del" or die "cannot delete $directory_del directory:$!";