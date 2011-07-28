#!/usr/bin/perl
use warnings;
use diagnostics;
use Carp;

	@test=(A .. Z, "\n");
print foreach @test;