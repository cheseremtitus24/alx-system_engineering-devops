#!/usr/bin/env ruby
# Matches all strings that contains hn and any single character in between
puts ARGV[0].scan(/^h.{1}n$/).join
