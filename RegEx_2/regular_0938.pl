# Metasymbols and subpatterns
while(<DATA>){
	s/(\w+)\s(\w+)/$2, $1/;    # Reverse first and last names
	print;
}

__DATA__
Steve Blenheim
Betty Boop
Igor Chevsky
Norma Cord
Jon DeLoach
Betty Boop