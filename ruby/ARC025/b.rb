h,w = gets.chomp.split(" ").map(&:to_i)
c = []
h.times do |i|
  c[i] = gets.chomp.split(" ").map(&:to_i)
end
h.times do |i|
  w.times do |j|
    if(i%2==0)
      if(j%2==1)
        c[i][j] = -c[i][j]
      end
    else
      if(j%2==0)
        c[i][j] = -c[i][j]
      end
    end
  end
end

h.downto(1) do |i|
  w.downto(1) do |j|
    if(i != j)
      i.downto(1)
    end
  end
end