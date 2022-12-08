require "matrix"

a = Array.new(24)

for i in 0..23
    a[i] = rand(20) - 10
end

puts Vector[*a]

sumEvenNeg = 0
sumOddPos = 0

a.each { |x|
    if x % 2 == 1 && x > 0 
        sumOddPos += x
    elsif x % 2 == 0 && x < 0  
        sumEvenNeg += x
    end
}

puts sumEvenNeg, sumOddPos