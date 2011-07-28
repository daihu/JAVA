#!/usr/bin/perl
#author::paul
use warnings;
use diagnostics;
use Carp;

$rename_old="d:/admin.php";
$rename_new="d:/admin.php.new";
rename "$rename_old","$rename_new";

