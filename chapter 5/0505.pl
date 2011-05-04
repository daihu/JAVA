# Using alternative quotes
print 'She cried, "I can\'t help you!"'," \n";   # Clumsy
print qq/She cried, "I can't help you!"  \n/;    # qq for double
                                                # quotes
print qq(I need $5.00\n);  # Really need single quotes 
                           # for a literal dollar sign to print
print q/I need $5.00\n/;   # What about backslash interpretation? 
print qq(I need \$5.00\n);  # Can escape the dollars sign
print qq/\n/, q/I need $5.00/," \n";
print q!I need $5.00!," \n";
print "The present working directory is ", 'cd';
print qq/Today is /, qx/date/;
print "The hour is ", qx{date +%H};
