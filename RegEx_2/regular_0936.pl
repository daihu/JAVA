# Remembering multiple subpatterns
while(<DATA>){
	print if s/(Steve) (Blenheim)/$2, $1/ 
}
__DATA__
Steve Blenheim  
Betty Boop
Igor Chevsky
Norma Cord
Jonathan DeLoach
Karen Evich
