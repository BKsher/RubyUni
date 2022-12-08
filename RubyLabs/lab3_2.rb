print "Input x: "
x = gets.to_f

y = 0.0

if x < -4
    y = 1 / (1 + x / (1 + x / (1 + x)))
  elsif x <= 0
    y = 1 / Math.sqrt((x - 2).abs / (x**2 * Math.cos(x)))
  elsif x <= 12
    y = 7 / 2 * Math.sqrt((Math.tan(x + 1 / Math.exp(x)) / Math.sin(x)**2))
  else
    y = 1 / (1 + x / (1 + x / (1 + x)))
end
  
puts "Value of y using 'if': #{y}"

y2 = 0.0

case x
when -4...0
  y2 = 1 / (Math.sqrt((x - 2).abs / (x**2 * Math.cos(x))))
when 0..12
  y2 = 7 / 2 * (Math.tan(x + 1 / Math.exp(x)) / Math.sin(x)**2)**0.5
else
  y2 = 1 / (1 + x / (1 + x / (1 + x)))
end


puts "Value of y using 'case': #{y2}"

