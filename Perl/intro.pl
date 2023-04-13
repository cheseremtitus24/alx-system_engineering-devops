Practical Extraction and Report Language (Perl)
Perl
===================== Perl’s numeric relational operators ==================

Operator
==         Equality                    if (3 == 4){}
<          Less than                   if (3 < 4){}
>          Greater than                if (3 > 4){}
<=         Less than or equal to       if (3 <= 4){}
>=         Greater than or equal to    if (3 >= 4){}
!=         Not equal to                if (3 != 4){}



===================== Perl’s string relational operators ==================

Operator
eq         Equality                    if ("hello" eq "world"){}
lt          Less than                  if ("hello" lt "world"){}
gt          Greater than               if ("hello" gt "world"){}
le         Less than or equal to       if ("hello" le "world"){}
ge         Greater than or equal to    if ("hello" ge "world"){}
ne         Not equal to                if ("hello" ne "world"){}

A. # difference from bash is that numeric comparison are symbolic (<=) whereas bash uses characters e.g (eq)
A scalar is a simple variable that holds a number or a string. Scalar variable
names begin with a dollar sign ($).

Perl also uses an additional convention with
numeric literals to improve legibility—the underscore character, as in 5_456_678_901.

The underscore only works within literal numbers
specified in a program, not in strings functioning as numbers or in data read from elsewhere.

Within double quotation marks, variables are interpolated
Within single quotation marks, variables are not interpolated


### Perl’s double-quoted string, control, and escape characters

code Meaning
\n  New line
\r Carriage return
\t Horizontal tabl
\f Form feed
\b Backspace
\a Bell (alarm)
\033 ESC in octal
\x7f Del in hexadecimal
\cC CTRL+C
\\ Backslash
\" Double quote
\u Force next character to uppercase
\l Force next character to lowercase
\U Force all following characters to uppercase until \E is encountered
\L Force all following characters to lowecase until \E is encountered
\Q Backslash - quote all following nonalphanumeric characters until \E is encountered.
\E End \U, \L, \Q

"
#Perl Arrays
An “at” sign (@) precedes the name of an array when assigning it values.
e.g.
@pets = ("dog", "cat", "parrot", "hamster" );
# accessing array index values
print ("$pets[0]\n");

# Perl Hashes - similar to python dict
Hash variables are preceded by a percent sign (%) when they are assigned values.
%animals = ('Tigers', 10, 'Lions', 20, 'Bears', 30);
# use of the arrow operator also works - Legibility.
%animals = (Tigers ==> 10, Lions ==> 20, Bears ==> 30);
# accessing Hash key values
print ("$animals{'Lions'}\n");# output 20

# Reading Commandline Arguments in Perl

$filein = $ARGV[0];
while (<>)
The <> symbol is called the diamond operator. After the file is opened, you can access
its data using the diamond operator. Each time it is called, it returns the next line from
the file.

# Accessing System Files in Perl.

#### N/B convention is to use all uppercase letters for filehandles - i.e. os handlers for io operations.

In most instances, you must issue an
open statement to open the file before you can access it. The exception to this occurs when
you use the ARGV[0] variable to pass the file name to the program through the command
line

#!/usr/bin/perl
# Program name: perlread1.pl
# Purpose: Display records in a file and count lines
$filein = $ARGV[0];
while (<>)
{
print "$_";
++$line_count;
}
print ("File \"$filein\" has $line_count lines. \n");

The Perl programming language defines a set of special variables. Among these
is the $_ variable, which is the default input, output, and pattern-searching
space. In the perlread1.pl program, you are using it as the default input variable.
However, in the perlread1.pl program, print “$_”; could also be written as print;
because the $_ variable is assumed by default.



#!/usr/bin/perl
# Program name: perlread2.pl
# Purpose: Open disk file. Read and display the records
# in the file. Count the number of records in
# the file.
#
# The open( ) function returns true if the file is opened successfully, and returns false if it fails to open
open (FILEIN, "students") || warn "Could not open students
file\n";
while (<FILEIN>)
{
print "$_";
++$line_count;
}
print ("File \"students\" has $line_count lines. \n");
close (FILEIN);

# Sorting Alphanumeric Items in Perl

#!/usr/bin/perl
# Program name: perlsort1.pl
# Purpose: Sort a list of names contained inside an array
# Syntax: perlsort1.pl <Enter>
#========================================================
@somelist = ("Oranges", "Apples", "Tangerines", "Pears",
"Bananas", "Pineapples");
@sortedlist = sort @somelist;
print "@sortedlist";
print"\n";

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

##Using Perl to Sort Numeric Fields
Sorting numerals utilizes a subroutine than implements a subroutine/function with comparison operators as its building blocks.
In the Perl language ' A subroutine begins with the keyword ' [sub] [function name]
Example subroutine:

sub numbers
{
	if ($a < $b) { -1; }
	elsif ($a == $b) { 0; }
	else { +1; }
}
# When sorting numbers, you are required to instruct Perl to use the above sorting subroutine rather than the built-in ASCII ascending sort.
sort [our_sort_sub = numbers] [@array_list]

# example:
@sortednumbers = sort numbers 101, 87, 34, 12, 1, 75

Larry Wall [creator of Perl] Created a special Perl operator for numeric Sorts
[<=>].
This sort operator is named <spaceship operator>, reduces coding requirements.

The sub routine [numbers] can be crunched down into the following.

sub numbers
{
$a <=> $b;
}
@sortednumbers = sort numbers 101, 87, 34, 12, 1, 75
# results will be similar.

# Furthermore- Numeric Sorting.
Perl has an inline sort block that performs the exact same sorting subroutine.

@sortednumbers = sort { $a <=> $b; } @numberlist;

The # { $a <=> $b; } # is the sort routine.

# Summary.
# Perl Scripts Resources:
1. http://awsd.com/scripts/webadverts/
2. http://www.scriptarchive.com/index.html
* diamond operator (<>) — The operator used in Perl to access data from an open file.  Each time the diamond operator is used, it returns the next line from the file.
* hash — A variable representing a set of key/value pairs. A percent sign (%) precedes a hash variable. ( Similar to python Dictionaries)
* scalar — A simple variable that holds a number or a string. Scalar variables’ names begin with a dollar sign ($).

