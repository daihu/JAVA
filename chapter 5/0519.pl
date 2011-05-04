#!/usr/bin/perl
use warnings;
use diagnostics;
%seasons=("Sp" => "Spring", 
          "Su" => "Summer", 
          "F"  => "Fall", 
          "W"  => "Winter",
         );
%days=("Mon" => "Monday",
       "Tue" => "Tuesday", 
       "Wed" => undef,
      );
$days{"Wed"}="Wednesday";
$days{5}="Friday";
