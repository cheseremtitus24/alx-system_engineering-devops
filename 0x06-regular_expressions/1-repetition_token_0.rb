#!/usr/bin/env ruby
# Matches all strings that contains a variable length of t's preceding n and prefixing hb
puts ARGV[0].scan(/^hb[t]{2,5}n$/).join
