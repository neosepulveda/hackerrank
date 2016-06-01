#!/bin/ruby

n = gets.strip.to_i
arr = gets.strip
arr = arr.split(' ').map(&:to_i)


positives = 0.0
negatives = 0.0
zeroes = 0.0

arr.each do |item|
    if item > 0
        positives += 1.0
    elsif item < 0
        negatives += 1.0
    else item == 0
        zeroes += 1.0
    end
end

puts positives / n
puts negatives / n
puts zeroes / n
