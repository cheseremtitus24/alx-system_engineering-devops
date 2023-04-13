#!/usr/bin/env perl
# Asks for user input and compares strings for Equality
print("hello to the w\uorld");
print("My name is: ");
$my_name = <STDIN>;
print("Your name is: ");
$your_name = <STDIN>;

if ($my_name eq $your_name)
{
  print("Your name is the same as mine. \n");
}
else
{
  print("Hello. My name is $my_name\n");
}
