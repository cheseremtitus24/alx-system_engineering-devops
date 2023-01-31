#!/usr/bin/env ruby
# Matches a ten digit phone number
puts ARGV[0].scan(/^\d{10,10}$/).join
