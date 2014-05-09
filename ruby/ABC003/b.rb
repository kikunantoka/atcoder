s = gets.to_s
t = gets.to_s
atcoder = "atcoder"
(0..s.length).each do |i|
  if s[i] != t[i]
    if !( s[i] == '@' && atcoder.include?(t[i]) ) && !( t[i] == '@' && atcoder.include?(s[i]) )
      puts "You will lose"
      break
    end
  elsif i == s.length - 1
    puts "You can win"
  end
end