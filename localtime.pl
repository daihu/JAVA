use strict;
use warnings;
use Time::localtime;
 
printf "Year is %d\n", localtime->year() + 1900;
printf "Day is %d\n", localtime->mday()  ;

