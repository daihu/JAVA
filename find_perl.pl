 use warnings;
 use diagnostics;
 use Carp;
 use File::Find;
 
 find(\&wanted, @directories_to_search);
    sub wanted { ... }
