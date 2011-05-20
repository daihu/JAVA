#!/usr/bin/perl
# author:pual
# E-mail:daihuxyz@gmail.com
use strict;
use diagnostics;
use warnings;
use Carp;
system("mv smtp_config.properties  smtp_config.properties.bak");
system("mv smtp_config.properties.others smtp_config.properties");