#!/usr/bin/perl
use strict;
use warnings;
use diagnostics;
use Carp;


system("/usr/bin/mencoder  Evelyn Lin.wmv -oac mp3lame -lameopts preset=64 -ovc xvid -xvidencopts bitrate=600 -of avi -o rmvb.avi  ");