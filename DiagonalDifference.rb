#!/bin/ruby

n = gets.strip.to_i
a = Array.new(n)
for a_i in (0..n-1)
    a_t = gets.strip
    a[a_i] = a_t.split(' ').map(&:to_i)
end

diag1, diag2 = 0, 0

for i in 0..n-1
    diag1 += a[i][i]
    diag2 += a[i][n-1-i]
end

puts (diag1 - diag2).abs
