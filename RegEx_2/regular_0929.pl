# Anchors and the m modifier
$_="Today is history.\nTomorrow will never be here.\n";
print if /^Tomorrow/;    # Embedded newline

$_="Today is history.\nTomorrow will never be here.\n";
print if /\ATomorrow/;   # Embedded newline

$_="Today is history.\nTomorrow will never be here.\n";
print if /^Tomorrow/m;

$_="Today is history.\nTomorrow will never be here.\n";
print if /\ATomorrow/m;

$_="Today is history.\nTomorrow will never be here.\n";
print if /history\.$/m;
