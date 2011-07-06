#!/usr/bin/perl
use warnings;
use diagnostics;
use Carp;
$ip_addr = `/sbin/ifconfig eth1 | perl -lne 'print  if /inet addr:/'`;
$ip_addr =~ s/^\s+|\s+$//g;
print $ip_addr, "\n";
$admin_addr ='paul\@zhazh.com';
&check_dfusage;
exit();

sub check_dfusage {
	@diskinfo     = `df`;
	$message_text = 'dfdfd ';
	foreach (@diskinfo) {
		( $dirname, $arg1, $arg2, $arg3, $arg4, $arg5, $arg6 ) =
		  split( ' ', $_, 7 );

		( $arg4num, $therest ) = split( '%', $arg4, 2 );
		if ( $arg4num > "70" ) {
			$message_text = '';
			"$ip_addr $arg5 Disk partition space usage over $arg4num%", "\n";
		}
	}
	if ( $message_text ne ' ' ) {
		&sendmessage;
	}
}

sub sendmessage {
	open( SF, "|mail -v -s '$ip_addr Disk Partition Warning' $admin_addr" );
	print SF "$message_text";
	close(SF);
}
