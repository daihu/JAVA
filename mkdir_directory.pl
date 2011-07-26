#!/usr/bin/perl
#author::paul
use warnings;
use diagnostics;
use Carp;

$dir="test";
mkdir "$dir",0755 or die "Cannot make $dir directory:$! ";