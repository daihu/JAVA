# A negative look behind
while(<DATA>){
	#?<������  !����Betty
	print if /(?<!Betty) B[a-z]*/;
}
__DATA__
Steve Blenheim
Betty Boop
Igor Chevsky
Norma Cord
Jon DeLoach
Karen Evich
