x = 161

res = ""

while x > 0 do
    res += (x%2 == 1 ? "1" : "0")
    x /= 2
end

res = res.reverse

puts res