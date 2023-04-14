#!/usr/bin/perl
# Program name: perlread2.pl
# Purpose: Open disk file. Read and display the records
# in the file. Count the number of records in the file.

# The open( ) function returns true if the file is opened successfully, and re  turns false if it fails to open
$open_status = open (FILEIN, "./students") || warn "Could not open students file\n";

while (<FILEIN>)
{
	print "$_";
	++$line_count;
}
print ("File \"students\" has $line_count lines. \n");
close (FILEIN);

