# An array of hashes
@stores=( { "Boss" =>"Ari Goldberg",
            "Employees" => 24,
            "Registers" => 10,
            "Sales" => 15000.00,
          },
          { "Boss" =>"Ben Chien",
            "Employees" => 12,
            "Registers" => 5,
            "Sales" => 3500.00,
          },
);
print "The number of elements in the array: ",$#stores + 1, "\n";   # The number of the last subscript + 1

for($i=0; $i< $#stores + 1; $i++){
	print $stores[$i]->{"Boss"},"\n";   # Access an array element
	print $stores[$i]->{"Employees"},"\n";
	print $stores[$i]->{"Registers"},"\n";
	print $stores[$i]->{"Sales"},"\n";
	print "-" x 20 ,"\n";
}
