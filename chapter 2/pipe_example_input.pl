#!/usr/bin/perl
use warnings;
use diagnostics;
use Carp;

open (F, "ls |") or die ;
while (<F>) {print;}