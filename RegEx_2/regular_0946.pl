# A positive look behind
$string="I love chocolate cake, chocolate milk, 
         and chocolate ice cream.";
         #������
$string =~ s/(?<= chocolate) milk/ candy bars/;
print "$string\n";

$string="I love coffee, I love tea, I love the boys 
         and the boys love me.";
$string =~ s/(?<=the boys) love/ don't like/;
print "$string\n";
