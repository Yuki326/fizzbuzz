my $check = 0;
my @list = (3,5,7,11);
for(my $i=0;$i<2000;$i++){
  $check = 0b0000;#各数字の倍数かを管理
  foreach my $j(0 .. $#list){
  	if($i % $list[$j] == 0){
 		$check += 1 << $j;
    }
  }
  if($check == 0b0001){print("Fizz\n")}
  elsif($check == 0b0010){print("Buzz\n")}
  elsif($check == 0b0011){print("FizzBuzz\n")}
  elsif($check == 0b0100){print("セブン\n")}
  elsif($check == 0b1000){print("イレブン\n")}
  elsif($check == 0b1100){print("セブンイレブン\n")}
  elsif($check == 0b1111){print("いい気分\n")}
  else{print $i,"\n"}

}