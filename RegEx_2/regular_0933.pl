# Clustering or grouping
$_="Tom and Dan Savage and Ellie Main are cousins.\n";
print if s/Tom|Ellie Main/Archie/g;

$_="Tom and Dan Savage and Ellie Main are cousins.\n";
print if s/(Tom|Ellie) Main/Archie/g;
