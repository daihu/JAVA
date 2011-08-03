#!/usr/bin/perl
use Carp;
use diagnostics;
use warnings;

sub greetme { print "Welcome, Vkommen till, Bienvenue!\n";}
&greetme if defined &greetme;


print "Program continues....\n";
&greetme;  # Call to subroutine

print "More program here.\n";

&bye;

sub bye { print "Bye, adjo, adieu.\n"; }

&bye;