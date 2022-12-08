require "matrix"

a = Array.new(8) 
b = Array.new(8)

for i in 0..7 do
    a[i] = rand(10)
    b[i] = rand(10)
end

x = Vector[*a]
y = Vector[*b]

puts x, y

scalProd = 0

for i in 0 ... x.size
    scalProd += x[i]*y[i];
end

puts scalProd
