#!/bin/ruby

n = gets.strip.to_i

s = ""
n.times { s << " " }


n.downto(1) do |i|
    s[i-1] = "#"
    puts s
end
