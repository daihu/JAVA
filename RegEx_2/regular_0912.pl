#!/usr/bin/perl
use warnings;
use diagnostics;
use Carp;

while(<DATA>){
	print if s/\s/*/g;
}
# \s ƥ��հ׷� ��ո��Ʊ���ͻ��з�
__DATA__
Steve Blenheim
Betty Boop
Igor Chevsky
Norma Cord
Jon DeLoach
Betty Boop
Karen Evich
