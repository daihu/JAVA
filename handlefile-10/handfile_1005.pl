#!/usr/bin/perl
# Open a file with a filehandle
open(FILE, "datebook") || die "Can't open datebook: $!\n";
while($line = <FILE>) {
	print "$line" if  $line =~ /^Lori/;
}
close(FILE);

