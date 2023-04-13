#!/usr/bin/perl
# Program name: perlsort4.pl
# Purpose: Sort numerically using the spaceship operator
# (<=>) and utilizes an inline block
# syntax: perlsort4.pl file name <Enter>
#========================================================
$x = 0;
while (<>)
{
	$somelist[$x] = $_;
	$x++;
}
@sortednumbers = sort { $a <=> $b; } @somelist;
print(@sortednumbers);
