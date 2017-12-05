#!/usr/bin/env ruby

out = 0

digits = ARGF
  .read
  .strip
  .chars
  .map(&:to_i)

digits.each_index do |i|
    len = digits.length
    out += digits[i] if digits[i] == digits[(i + len/2) % len]
end

puts out