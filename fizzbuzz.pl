my $check = 0;
my @list = (3,5,7,11);
my @msg = ("","Fizz","Buzz","FizzBuzz","セブン","","","","セブンイレブン",
"","","","","","","いい気分");

for(my $i=0;$i<2000;$i++){
  $check = 0b0000;#各数字の倍数かを管理
  foreach my $j(0 .. $#list){
  	if($i % $list[$j] == 0){
 		$check += 1 << $j;
    }
  }
  print $msg[$check] ? $msg[$check]:$i,"\n"
}