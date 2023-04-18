#!/usr/bin/perl
# Program name: number_sort.pl
# Purpose: Sort numerically using the spaceship operator
# (<=>) and utilizes an inline block
# syntax: ./number_sort.pl <Enter>
#========================================================
@unsorted_numlist = (115, 10, 19, 35, 2);
@sortednumbers = sort { $a <=> $b; } @unsorted_numlist;
$x = 0;
foreach (@sortednumbers)
{
	if ($x == 0)
	{
		print("$_");
		++$x;
	}
	else
	{
		print(",$_");
	}
}
print("\n");
