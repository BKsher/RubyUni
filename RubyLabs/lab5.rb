def f1(x)
    return Math.asin(Math.sqrt(x)) / Math.sqrt(x*(1-x))
end

def f2(x)
    return Math.tan(x/2 + Math::PI/4)**3
end

def prm (f, a, b, n)
    res = 0
    h = (b-a)/n
    (1..n).each do |i|
        x = a + i*h - h/2
        res += h * method(f).call(x) 
    end
    puts res
end

def trp (f, a, b, n)
    res = 0
    h = (b-a)/n
    (1...n).each do |i|
        x = a + i*h
        res += h * method(f).call(x) 
    end
    res += (method(f).call(a) + method(f).call(b)) * h / 2 
    puts res
end

prm(:f1, 0.2, 0.3, 100)
trp(:f1, 0.2, 0.3, 100)
prm(:f2, 0.0, Math::PI/8, 100)
trp(:f2, 0.0, Math::PI/8, 100)