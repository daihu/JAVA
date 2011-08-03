#!/usr/bin/perl

open (FILEOUT,">newfile") || die "Can't open newfile: $!\n";
select(FILEOUT);      # Select the new filehandle for output
open (DB, "<datebook") || die "Can't open datebook: $!\n";

while(<DB>) {
   print ;           # Output goes to FILEOUT, i.e., newfile
}
select(STDOUT);       # Send output back to the screen
print "Good-bye.\n";  # Output goes to the screen

