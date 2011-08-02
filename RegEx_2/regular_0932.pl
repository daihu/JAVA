#!/usr/bin/perl
use Carp;

while(<DATA>){
	print if /\s(12){3}$/;  # Print lines matching exactly 3 
	                        # consecutive occurrences of 12 at 
	                        # the end of the line
}
__DATA__
Steve Blenheim  	121212
Betty Boop      	123
Igor Chevsky    	123444123
Norma Cord      	51235
Jonathan DeLoach	123456
Karen Evich     	121212456
