#!/bin/bash
#Dan Siegel
#11.20.16
#uon.sh: this program is running a who command, trying to find a logged in user, running a check every 30 minutes. When they user is loggedin, it will send a message that they are logged on.  
until who | grep "$1" > /dev/null # running an until loop, piping that data over to a grep looking for the user defined in variable 1. It is then and directing the output of the grep itself to the garbage
do sleep 30 # Wait 30 minutes and try again. 
done
echo "$1 is logged on." exit 0
