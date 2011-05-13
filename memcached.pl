#!/usr/bin/perl
#use Net::Telnet();
$memcache=`/usr/local/bin/memcached -d -m 2048 -u nobody -l 0.0.0.0  -p 11211 -c 1024 -P /tmp/memcached.pid &`;
print "Memcached Done.\n";
$memtool=`/usr/memcached-1.4.5/scripts/memcached-tool localhost:11211`;
print "print memcache default \n $memtool";
$memtoolstats=`/usr/memcached-1.4.5/scripts/memcached-tool localhost:11211 stats`;
print "Memcached stats modes. \n $memtoolstats";                                                   