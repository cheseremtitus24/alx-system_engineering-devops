NOTE: A handy way to crosscheck the octal notation is by running (**stat -c "%a" filename**)

0-iam_betty - is a script that invokes the **substitute user (*su*)** command to temporarily gain access to a shell in the context of the user betty.

1-who_am_i - is a script that utilizes the (*whoami*) command to output the currently logged in user's name

2-groups - prints all the groups that the current logged in user belongs to. command (*groups*)

3-new_owner - Changing a file ownership requires elevated privileges and this scripts invokes (*sudo chown new_file_owner filename*).

4-empty - To create an empty file you use (*touch new_empty_file*);

5-execute - In order to modify a files permission you must be owner of that file. The owner is the user who's active session created the file/directory. In order to change its permission you can use the symbolic or octal system. In adding the execute permission you can use this (*chmod u+x filename*) or (*chmod 764 filename)

6-multiple_permissions - (**chmod ug+x,o+r hello**)  in the octal system (4=r,1=x,2=w) therefore for rx_ rx_ r__  for owner,group,other respectively would be (*chmod 554 filename*). While using the symbolic system you would use (*chmod u+rx-w,g+rx-w,o+r-xw filename*) the u-is owner, the g-is for user's group and o-is for everybody. The + preceding the symbol applies the permission bits whereas the - subtracts the specified permission bits.

7-everybody - adds execute permissions to all system users (**chmod a+x hello**).

8-James_Bond - no permissions for a file is represented by octal number zero (*0*) and full permission (rwx) is summs up to 7. therefore the command will be (*chmod 007 file_name*)

9-John_Doe - apply full (*rwx*) permission for owner, (*rx*) for owner's group and (*wx*) for everybody else. substituting we have u=4+2+1 g=4+1 o=2+1 = 753
**(chmod 753 filename)**

10-mirror_permissions - --reference=ref_file option allows you mirror the permissions of a defined file (**chmod --reference=ref_file copycatfile**)

11-directories_permissions - In order to only change the permissions of directories recursively you will have to use the (**-R **) recursive option and the (**-X) option which only applies execute permission to only folders/directories.
(** chmod -R a=X ./ **)

12-directory_permissions - to dynamically create a directory while assigning file permissions you have to use the (*-m*) option in which you can provide the octal mode (**mkdir -m 751 new_dir**)  

13-change_group - Reasigns group ownership of a file (**chgrp alternate_group filename**)

100


