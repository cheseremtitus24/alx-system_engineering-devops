#!/usr/bin/perl
# Program name: perlsort2.pl
# Purpose: Sorts a text file alphabetically. File name is
# entered on the command line.
# Syntax: perlsort2.pl file name <Enter>
#========================================================
$x = 0;
while (<>)
{
$somelist[$x] = $_;
$x++;
}
@sortedlist = sort @somelist;
print @sortedlist;
