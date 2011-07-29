use Encode;
$dat="²âÊÔÎÄ±¾";
$str=decode("gb2312",$dat);
@chars=split //,$str;
foreach $char (@chars) {
print encode("utf-8",$char),"\n";
} 