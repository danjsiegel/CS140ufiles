#!/bin/bash
# name/ date Dan Siegel / 11.20.16, so the professor can grade the proper student
# purpose of the program - to make a copy of a file with branches if the file does not exist, or the argument passed into the fucntion is incorrect

if test $# = 1 # $# is a special paramater, meaning that it tests that the correct number of arguments have been passed into the function, which should be a total of 1 
  then
if test -f $1 #in this, if the correct number of variables that have been passed, then it runs a function of the contents of the variable itself. 

then 
cp $1 $home/keep #This copies the contents of variable 1 into the home/keep variable. 
vi $1
else
echo "file not found. Try again"
fi
else
echo " You must specify a file name. Try again."
fi
