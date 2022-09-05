0-hello_world - prints the string "Hello, World" to the terminal

1-confused_smiley - prints special non standard Ascii characters

2-hellofile - print the contents of /etc/passwd file to standard out

3-twofiles - outputs to the screen appended contents of two separate files to standard out

4-lastlines - prints the filtered last 10 lines of the /etc/passwd file

5-firstlines - prints the filtered first 10 lines of the /etc/passwd file

6-third_line - outputs the third line of a read in file to standard output

8-cwd_state - writes the contents of ls -la to a file called ls_cwd_content

9-duplicate_last_line - duplicates the last line of a file 

10-no_more_js - deletes all files that end with a .js extension in both the current folder and all subdirectories. **(rm -- **/*.js *.js 2>/dev/null)**

11-directories - outputs the count of all directories in the linux tree with the root node being the current directory. '.' and '..' directories are ignored using the *ls -A* option and recursive subdirectories should be considered and all the available directories' tallies are output to stdout (**ls -RAl | grep "^d" | wc -l**)

12-newest_files - outputs a list of 10 newline terminated string of file names that are sorted based on modification time in Descending order. (***ls -AtpB -1 | grep --invert-match  "/"***) the *-t* option sorts based on time and B ignores files ending with a tilde symbol (can be emacs backup files) 


13-unique - outputs the lines that are unique

14-findthatword - outputs  all the lines in the /etc/passwd file that contain the string root

15-countthatword - Outputs the number of lines that contain the string "bin" from within the /etc/passwd file.

16-whatsnext - prints 3 lines of trailing context after a line matches a search string from the file /etc/passwd

17-hidethisword - prints all the lines that do not contain the string "bin" from the file /etc/passwd

18-letteronly - prints all lines that begins with alphanumeric characters in the file /etc/ssh/sshd_config

19-AZ - replaces all the character occurrences of the set [A,c] with the set [Z,e] respectively.

20-hiago - deletes all the occurrences of the any character that is matched in the set [C,c]

21-reverse - outputs the reversed form of a string 

22-users_and_homes - outputs a sorted and field delimited result with username and home directories from the the /etc/passwd file

100-empty_casks - outputs all the files and directories that are empty. The script does not print full file paths.

101-gifs - outputs all the filenames less the file extension of items in the current directory tree than have the extension '.gif' and prints them in a sorted order that is case insensitive.
102-acrostic - outputs the concatenation of the first letter of every character that begins a sentence.
103-the_biggest_fan - ouputs the hostname/ip-address of the most domain visit/interraction of the 11 most frequent visitors. 









 
