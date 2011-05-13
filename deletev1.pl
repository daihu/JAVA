#!/usr/bin/perl
use strict;   
use File::Path;
$tmp="E:\data";
unlink $tmp foreach (<data\*>);