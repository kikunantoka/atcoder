n, m = gets.chomp.split.map(&:to_i)
x = []
xt = []
y = []
yt = []
z = []
zt = []
a = []
result = 0
n.times do |i|
  x[i], y[i], z[i] = gets.chomp.split.map(&:to_i)
  xt[i], yt[i], zt[i] = x[i], y[i], z[i]
  a[i] = x[i].abs + y[i].abs + z[i].abs
end
(m - 1).times do |j|
  index = a.index(a.max)
  puts index
  xx = x[index]
  yy = y[index]
  zz = z[index]
  x.slice!(index)
  y.slice!(index)
  z.slice!(index)
  a.slice!(index)
  xt.slice!(index)
  yt.slice!(index)
  zt.slice!(index)
  (n - (j + 1)).times do |i|
    xt[i] += xx
    yt[i] += yy
    zt[i] += zz
    a[i] = xt[i].abs + yt[i].abs + zt[i].abs
  end
end
puts a.max
