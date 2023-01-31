#!/usr/bin/env ruby
# Matches all strings that contains hbn with a variable length of t 
puts ARGV[0].scan(/^hb[t]{1,4}n$/).join
