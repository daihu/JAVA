#!/usr/bin/perl
use warnings;
use diagnostics;
use Carp;

# This script copies one binary file to another. 
# Note its use of binmode to set the mode of the filehandle.

$infile="statsbar.gif";
open( INFILE, "<$infile" );
open( OUTFILE, ">outfile.gif" );

binmode( INFILE );     # Crucial for binary files!

binmode( OUTFILE ); 
# binmode should be called after open() but before any I/O 
# is done on the filehandle.

while ( read( INFILE, $buffer, 1024 ) ) {
	 print OUTFILE $buffer;
}
    
close( INFILE ); 
close( OUTFILE );

