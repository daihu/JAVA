# Using split and pattern matching
while(<DATA>){
	@line = split(":", $_);
	print $line[0],"\n"  if $line[1] =~ /408-/ 
	                       # Using the pattern matching operator
}
__DATA__
Steve Blenheim:415-444-6677:12 Main St.
Betty Boop:303-223-1234:234 Ethan Ln.
Igor Chevsky:408-567-4444:3456 Mary Way
Norma Cord:555-234-5764:18880 Fiftieth St.
Jon DeLoach:201-444-6556:54 Penny Ln.
Karen Evich:306-333-7654:123 4th Ave.
