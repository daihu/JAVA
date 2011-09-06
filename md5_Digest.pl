use warnings;
use diagnostics;
use Carp;

use Digest::MD5 qw(md5_hex);
    print "Digest is ", md5_hex("foobarbaz"), "\n";
    