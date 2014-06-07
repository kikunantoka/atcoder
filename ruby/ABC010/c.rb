txa, tya, txb, tyb, t, v = gets.chomp.split(" ").map(&:to_i)
n = gets.to_i
flg = false
n.times do
  x,y = gets.chomp.split(" ").map(&:to_i)
  if Math.sqrt( (x-txa)**2+(y-tya)**2 ) + Math.sqrt( (txb-x)**2+(tyb-y)**2 ) <= t*v
    flg = true
  end
end
if flg == true
  puts('YES')
elsif
  puts('NO')
end
