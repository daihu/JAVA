#!/usr/bin/perl
use strict; 
use File::Path;
 -d $_?rmtree($_):unlink $_ foreach (<upload/*>);