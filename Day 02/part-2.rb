#!/usr/bin/env ruby

p ARGF
  .each_line
  .map { |line|
    line
      .split
      .map(&:to_i)
      .combination(2)
      .map(&:sort)
      .find { |pair| pair.last.modulo(pair.first).zero? }
  }
  .map { |pair| pair.last / pair.first }
  .reduce(:+)
