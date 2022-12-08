def f(x, i)
    fact = i > 0 ? ((1..i).inject(:*)).to_f : 1.0
    Math.cos(x * i / 4) / fact
end

def sigma(x, n)
    result = 0
    i = 0
    while(i <= n)
        result += yield x, i
        i += 1
    end
    result
end

def sigmaInf(x)
    result = 0
    i = 0
    loop do
        value = yield x, i
        result += value
        i += 1
        break if value < 1e-3
    end
    result
end

puts sigma(Math::PI/5, 18) {|x, i| f(x, i)}
puts sigmaInf(Math::PI/5) {|x, i| f(x, i)}
