#!/usr/bin/env ruby

p ARGF
  .each_line
  .map { |line|
    minmax = line.split.map(&:to_i).minmax

    (minmax.first - minmax.last).abs
  }
  .reduce(:+)