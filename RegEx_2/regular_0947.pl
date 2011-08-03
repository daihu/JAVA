# A negative look behind
while(<DATA>){
	#?<向后查找  !不是Betty
	print if /(?<!Betty) B[a-z]*/;
}
__DATA__
Steve Blenheim
Betty Boop
Igor Chevsky
Norma Cord
Jon DeLoach
Karen Evich
