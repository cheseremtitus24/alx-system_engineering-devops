#!/usr/bin/perl
# Program name: perlsort4.pl
# Purpose: Sort numerically using the spaceship operator
# (<=>)
# syntax: perlsort4.pl file name <Enter>
#========================================================
$x = 0;
while (<>)
{
	$somelist[$x] = $_;
	$x++;
}
@sortedlist = sort number_comparison @somelist;
print @sortedlist;
# Numeric comparison using "spaceship operator"
sub number_comparison
{
	$a <=> $b;
}
