#!/usr/bin/env ruby

out = 0

digits = ARGF
  .read
  .strip
  .chars
  .map(&:to_i)

digits.each_index do |i|
    out += digits[i] if digits[i] == digits[(i + 1) % digits.length]
end

puts out