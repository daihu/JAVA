# Reversing subpatterns
while(<DATA>){
	s/([A-Z][a-z]+)\s([A-Z][a-z]+)/$2, $1/;  
                                  # Reverse first and last names
	print;
}
__DATA__
Steve Blenheim
Betty Boop
Igor Chevsky
Norma Cord
Jon DeLoach
Karen Evich
