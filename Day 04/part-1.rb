#!/usr/bin/env ruby

p ARGF.each_line.count { |x| !x.match /\b(\w+)\b.*\b\1\b/ }
