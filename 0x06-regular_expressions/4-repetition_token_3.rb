#!/usr/bin/env ruby
# Matches all strings that contains hbn with a variable length of t with atleast 1 
puts ARGV[0].scan(/^hbt+n$/).join
