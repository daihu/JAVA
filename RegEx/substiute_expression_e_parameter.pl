# The e and g modifiers
while(<DATA>){
	s/6/6 * 7.3/eg;       # Substitute 6 with product of 6 * 7.3

	print;
}

__DATA__
Steve Blenheim   5
Betty Boop       4
Igor Chevsky     6
Norma Cord       1
Jon DeLoach      3
Karen Evich      66