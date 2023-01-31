#!/usr/bin/env ruby
# Matches all strings that contains htn with an optional b 
puts ARGV[0].scan(/^hb?tn$/).join
