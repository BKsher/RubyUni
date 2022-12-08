def sum_series1(epsilon)
    sum = 0.0
    n = 2.0
  
    while true
      term = ((factorial(n - 1).to_f / factorial(n + 1)) ** (n * (n + 1)))
      if term.abs < epsilon
        break
      end
      sum += term
      n += 1
    end
  
    sum
end

def factorial(n)
    (1..n).inject(:*) || 1
end

def sum_series2(x, epsilon)
    sum = 0.0
    n = 1.0
  
    while true
      term = (-1.0) ** (n - 1) * (x ** (2 * n - 1)) / factorial(2 * n - 1).to_f
      if term.abs < epsilon
        break
      end
      sum += term
      n += 1
    end
  
    sum
end

def sum_series3(epsilon)
    sum = 0.0
    term = 1.0
    n = 1.0

    while term >= epsilon
        term = factorial(4 * n - 1) * factorial(2 * n - 1) / (factorial(4 * n) * 2**(2 * n) * factorial(2 * n))
        sum += term
        n += 1
    end

    sum
end
  

puts "Sum of the first series: #{sum_series1(0.00001)}"

print "Enter x: "
x = gets.to_f

puts "Sum of the second series: #{sum_series2(x, 0.00001)}"
puts "sin(x): #{Math.sin(x)}"

puts "Sum of the third series: #{sum_series3(0.00001)}"
  