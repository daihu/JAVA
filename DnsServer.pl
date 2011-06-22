#!/usr/bin/perl
use warnings;
use strict;
use diagnostics;
use Carp;

#use GNU/Linux system command 
system("dig zhazh.com ANY +noall +answer");
