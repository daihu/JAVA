# A negative look ahead
while(<DATA>){
	#��ǰ����
	print if /^\w+\s(?![BC])/;
}
__DATA__
Steve Blenheim
Betty Boop
Igor Chevsky
Norma Cord
Jon DeLoach
Karen Evich
