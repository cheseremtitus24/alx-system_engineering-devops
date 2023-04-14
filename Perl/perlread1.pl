#!/usr/bin/perl
# Program name: perlread1.pl
# Purpose: Display records in a file and count lines
# syntax: ./perlread1.pl infile.txt
$filein = $ARGV[0];
while (<>)
{
print "$_";
++$line_count;
}
print ("File \"$filein\" has $line_count lines. \n");
