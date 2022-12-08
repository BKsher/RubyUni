sum = 0.0
x = 2.0
for i in 1..10
  sum = sum + (i + 1.0) / (i + 2) * x ** i
end
puts sum

sum = 1.0
for i in 1..8
  sum = sum + 1.0 / 3 ** i
end
puts sum
