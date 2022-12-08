x = "111000100111"

x = x.reverse

res = 0
p = 1;

for i in 0 ... x.size
    if x[i] == "1" then 
        res += p
    end
    p *= 2
end

puts res