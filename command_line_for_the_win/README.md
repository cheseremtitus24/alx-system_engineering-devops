#CommandLine 4 the win
1. echo "hello world"
2. pwd - Prints the current working directory
3. ls - prints the files in current directory one file per line
4. cat access.log - print the contents of the file access.log to stdout 
5. cat access.log | tail -n 5 - prints the last 5 lines of specified file
6. touch take-the-command-challenge - creates the specified empty file
7. mkdir -p tmp/files - creates recursive directories with one command
8. cp take-the-command-challenge tmp/files - copies specified file to the specified directory
9. mv take-the-command-challenge tmp/files - moves and overwrites the file take-the-command-challenge
10.ln -s tmp/files/take-the-command-challenge take-the-command-challenge - Creates a symbolic linke to the 2 commandline argument and saves the created link in the current directory 
11. find ./ -delete - Deletes all the files,directories and subdirectories starting from the current working directory
12. find ./ -type f -regex .*.doc -delete - deletes all files that have the .doc extension recursively starting from the current working directory 
13. cat access.log |grep GET - prints all the lines in the file access.log that contain the string "GET"
14. find . | grep -rl 500 - prints all files in current working directory that contain the string "500"
15. ls access.log* - prints the relative paths for files starting with access.log*
16. cat **/access.log* | grep 500 - prints all mathing lines in all files under the current directory that start with access.log that contain the string "500"
17. cat **/access.log* | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" - Extracts all ip addresses from access log files and prints them one per line
18. ls -l |wc -l - Counts the number of files in the current directory and prints the number of files as an integer value
19. cat access.log | sort - prints the contents of access.log in a sorted order
20. cat access.log | grep "GET" | wc -l : Prints the number of lines in access.log file that contains the string GET
21. cat split-me.txt | tr ';' '\n' - Splits ; delimited line containing numbers and prints them one per line
22. echo -n {1..100} - Prints the numbers 1-100 separated by spaces
23.  find . -type f -name "*.txt" -exec sed -i '1,$s/challenges are difficult//g' {} \; - Deletes all occurrences of the phrase "challenges are difficult" in all files in the current directory tree
24. echo $(cat sum-me.txt |tr "\n" "+") 0|bc - prints the sum of individual lines of a file that contains integers
25.  ls -Rl | grep '^-' | awk '{print $9}' -Prints all files in current directory recursively without the leading directory path.
26. find . -type f -name '*.*' -exec bash -c 'mv "$1" "${1%.*}"' _ {} \;-Renames all files by removing the extension in the current directory tree structure.
27. ls -1 | tr ' ' '.' - Lists all of the files in current path but performs substitution of " " to a period.



