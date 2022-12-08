a, b, c = false, false, false
x, y, z = -8, -10, -12

puts "a) " + (!(a || b) && (a && !b)).to_s # false
puts "b) " + ((false).object_id <= (true).object_id && (a||b) && c && x).to_s # false
puts "c) " + ((8 - 2*x <= z && x*x <= y*y) || (z >= 15)).to_s # false
puts "d) " + ((x > 0 && y < 0) || (z >= (x*y - y/x - x))).to_s # false
puts "e) " + (!(a || (b && !(c || (!a && b))))).to_s # true
puts "f) " + (x*x + y*y >= 1 && x >= 0 && y >= 0).to_s # false
puts "g) " + ((a && ((c && b) == (b || a))) && b).to_s # false