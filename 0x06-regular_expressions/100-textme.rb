#!/usr/bin/env ruby
# Matches all occurring from and to Contacts and also captures the flags
puts ARGV[0].scan(/from:(.{1,12})\] \[to:(.{1,12})\] \[flags:(.{1,14})\]/).join(",")
