#!/bin/sh
echo "What is your name?"
read USER_NAME
echo "Hello $USER_NAME"
echo "I will create you a file called ${USER_NAME}_file"
touch "${USER_NAME}_file"

: '
 Note the quotes around "${USER_NAME}_file" - 
 if the user entered "Steve Parker" (note the space) 
 then without the quotes, the arguments passed to touch 
 would be Steve and Parker_file - that is, we'd effectively be saying 
 touch Steve Parker_file, which is two files to be touched, not one.
    [by the way, this note is in a sort of multiline comment]
'
