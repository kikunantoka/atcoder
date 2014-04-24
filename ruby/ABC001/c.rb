deg,dis = gets.chomp.split(" ").map(&:to_i)
dis = dis.to_f
sdeg = ["N","NNE","NE","ENE","E","ESE","SE","SSE","S","SSW","SW","WSW","W","WNW","NW","NNW"]
vdir = [15,33,54,79,107,138,171,207,244,284,326,2000]
deg *= 10
deg += 1124
deg /= 2250
deg %= 16
dis /= 6
dis = dis.round
if dis <= 2
  puts("C 0\n")
else
  (0..11).each do |i|
    if dis <= vdir[i]
      puts("#{sdeg[deg]} #{i+1}\n")
      break
    end
  end
end
