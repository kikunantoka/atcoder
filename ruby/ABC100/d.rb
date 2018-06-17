n, m = gets.chomp.split.map(&:to_i)
if m == 0
  puts 0
  exit
end
a1 = []
a2 = []
a3 = []
a4 = []
a5 = []
a6 = []
a7 = []
a8 = []
r1 = r2 = r3 = r4 = r5 = r6 = r7 = r8 = 0
n.times do |i|
  x, y, z = gets.chomp.split.map(&:to_i)
  a1[i] = x + y + z
  a2[i] = x + y - z
  a3[i] = x - y + z
  a4[i] = x - y - z
  a5[i] = -x + y + z
  a6[i] = -x + y - z
  a7[i] = -x - y + z
  a8[i] = -x - y - z
end
puts [
  a1.sort.reverse[0...m].inject(:+),
  a2.sort.reverse[0...m].inject(:+),
  a3.sort.reverse[0...m].inject(:+),
  a4.sort.reverse[0...m].inject(:+),
  a5.sort.reverse[0...m].inject(:+),
  a6.sort.reverse[0...m].inject(:+),
  a7.sort.reverse[0...m].inject(:+),
  a8.sort.reverse[0...m].inject(:+)
].max
