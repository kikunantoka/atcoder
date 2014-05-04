ax,ay,bx,by,cx,cy = gets.chomp.split(" ").map(&:to_f)
bx -= ax;
by -= ay;
cx -= ax;
cy -= ay;
puts sprintf("%.1f",(bx*cy - by*cx).abs / 2)
