m = gets.to_f
m /= 1000;
if m > 70
  print("89\n")
elsif m >= 35
  printf("%02d\n",(m-30)/5+80.to_i)
elsif m >= 6 && m <= 30
  printf("%02d\n",m+50.to_i)
elsif m >= 0.1 && m <= 5
  printf("%02d\n",m*10.to_i)
else
  print("00\n")
end