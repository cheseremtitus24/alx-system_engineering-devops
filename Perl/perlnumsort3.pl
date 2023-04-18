#!/usr/bin/perl
# Program name: perlsort3.pl
# Purpose: Sorts numerically using a subroutine. File name
# is entered on the command line.
# Syntax: perlnumsort3.pl file name <Enter>
#========================================================
$x = 0;
$y = 0;
while (<>)
{
	$somelist[$x] = $_;
	$x++;
}
@sortedlist = sort number_compare @somelist;
print @sortedlist;

@sortedlist = sort number_compare 66, 72, 20, 12, 77;
# iterate through array
foreach (@sortedlist)
{
	if($y eq 0)
	{
		print("$_");
		$y++;
	}
	else
	{
		print(" $_");
	}
}
print("\n");
#print @sortedlist;

# Numeral Scalar sorter subroutine
sub number_compare
{
	if ($a < $b) { -1; }
	elsif ($a == $b) { 0; }
	else { +1; }
}
