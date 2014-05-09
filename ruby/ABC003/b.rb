s = gets.to_s
t = gets.to_s
(0..s.length).each do |i|
  if s[i] != t[i]
    if s[i] == '@'
      if t[i] != 'a' && t[i] != 't' && t[i] != 'c' && t[i] != 'o' && t[i] != 'd' && t[i] != 'e' && t[i] != 'r'
        puts("You will lose")
        break
      end
    elsif t[i] == '@'
      if s[i] != 'a' && s[i] != 't' && s[i] != 'c' && s[i] != 'o' && s[i] != 'd' && s[i] != 'e' && s[i] != 'r'
        puts("You will lose")
        break
      end
    else
      puts("You will lose")
      break
    end
  elsif i == s.length - 1
    puts("You can win")
  end
end