def z(x, t, fi)
    z = Math.tan((Math.exp(t)+3**fi)/(Math.sqrt((t*t+2).abs)))
    p1 = Math.cos(fi)**3 + 2.8*(10**(-3.4)) + x
    p2 = (Math.sin(Math::PI-4)**3 + 1.2) ** 0.2
    z -= p1/p2
    return z
end

puts "Input x, t, fi"
x = gets.chomp.to_f
t = gets.chomp.to_f
fi = gets.chomp.to_f

puts z(x, t, fi)