# Shell Basics
# Challenge                                 References                            Solution File

*print the full path of the current working directory on *unix systems* ### man pwd **0-current_working_directory**

*Move files/folders that begin with an uppercase to a different location* http://linuxcommand.org/lc3_lts0050.php **100-lets_move**

*Move delete files that end with tilde files* http://linuxcommand.org/lc3_lts0050.php 101-clean_emacs

*Make recursive directories that share a single parent directory tree* man mkdir **102-tree**

*print current directory items showing hidden files and directories. The output should be comma separated and must append a '/' to indicate a directory* man ls **103-commas**

*change to a recently explored directory using the cd command* man cd **10-back**

*list contents of chained directories in a long format and displaying hidden files and directories* man ls **11-lists**

*Identify files using the file command* man find **12-file_type**

*Make soft symbolic links  of a file*  man ln **13-symbolic_link**

*Copy Updated files to a destination folder while preserving recently updated files   *  http://linuxcommand.org/lc3_lts0050.php **14-copy_html**

*Simply list the contents of the current working directory* **1-listit**

*Changes to users home directory without using shell-environment variables* **2-bring_me_home**

*List the contents of the Current Working Directory in long format* **3-listfiles**

*List the contents of the Current Working Directory and show hidden files and directories*  **4-listmorefiles**

*List  user's ID and Users group ID in the long format listing* man ls **5-listfilesdigitonly**

*Make a directory in the /tmp directory* man mkdir **6-firstdirectory**

*Move a file to a different directory using absolute file path*  man mv **7-movethatfile**

*Remove a file using its absolute file path* **8-firstdelete**

*Delete an empty directory* man rmdir **9-firstdirdeletion**

# Creating a custom magic file database
When matching a string the magic file contains the first line that is of the following format

filename: school

[Offset byte start of file] [type of data to search for can be a string/number/regex] [matching text] [generic display string should be informative]

[!:mime] [Mimetype name that is displayed when running file --mime-type filename]


**To compile this file into an executable magic file compile it using the following command**

file -C -m school

when file contents are listed there will be the file school.mgc which will be created.

**use this compiled file using the following command** 

file -m school.mgc *

### Contents on the magic file can be defined in more details through diving into the following articles and blog posts
https://stackoverflow.com/questions/7236191/how-to-create-a-custom-magic-file-database
http://cweiske.de/tagebuch/custom-magic-db.htm
https://linux.die.net/man/5/magic
