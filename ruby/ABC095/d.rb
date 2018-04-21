def value(s, c, pos)
  s.map do |si|
    si[1] - [(si[0] - pos).abs, (c - si[0] + pos).abs].min
  end
end

n, c = gets.chomp.split.map(&:to_i)
s = []
n.times do |i|
  s[i] = gets.chomp.split.map(&:to_i)
end

k = 0
pos = 0

n.times do
  v = value(s, c, pos)
  max = v.max
  if max > 0
    ns = s[v.index(max)]
    if (ns[0] - pos).abs < (c - ns[0] + pos).abs
      dis = (ns[0] - pos).abs
      if ns[0] - pos > 0 # 反時計周り
        s.each_with_index do |si, i|
          if si[0] <= ns[0]
            k += si[1]
            s.delete_at(i)
          end
        end
        pos = ns[0]
      else # 時計回り
        s.each_with_index do |si, i|
          if si[0] >= ns[0]
            k += si[1]
            s.delete_at(i)
          end
        end
        pos = ns[0]
      end
      k -= dis
    else
      dis = (c - ns[0] + pos).abs
      if ns[0] - pos > 0 # 時計周り
        s.each_with_index do |si, i|
          if si[0] <= ns[0]
            k += si[1]
            s.delete_at(i)
          end
        end
        pos = ns[0]
      else # 反時計回り
        s.each_with_index do |si, i|
          if si[0] >= ns[0]
            k += si[1]
            s.delete_at(i)
          end
        end
        pos = ns[0]
      end
      k -= dis
    end
  else
    break
  end
end

puts k
