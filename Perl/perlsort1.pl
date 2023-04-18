#!/usr/bin/perl
# Program name: perlsort1.pl
# Purpose: Sort a list of names contained inside an array
# Syntax: perlsort1.pl <Enter>
#========================================================
@somelist = ("O2ranges", "9Apples", "Tangerines", "Pears22",
"Bananas", "1Pineapples");
@sortedlist = sort @somelist;
print "@sortedlist";
@sortedlist = sort "hello", "1world", "apples";
print "\n@sortedlist";
print"\n";
