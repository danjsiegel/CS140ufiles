#!/bin/bash
#Dan Siegel
#11.20.16
#Assignment 6

	clear   #gives a fesh screen 
	until [ "$userltr" = "j" ]   #sets the program to repeat until the user inputs j" 
		do
		echo -e "\n Dan's Menu \n"
		echo 
		echo "	a.)	Emailer Program"
		echo "	b.)	Users Currently logged In"
		echo "	c.)	Current Date and Time"
		echo "	d.)	This Months Calendar"
		echo "	e.)	Name of the Working Directory"
		echo "	f.)	Contents of Working Directory"
		echo "	g.)	Find the IP of a Web Address"
		echo "	h.) 	See your Fortune"
		echo "	i.)	print a file (on the screen)"
		echo -e "	j.)	Exit Program\n"
		

		read -p "Enter a letter: " userltr  #collects the input the user gives to the command prompt
		echo
		#
		case "$userltr" in
		a|A)   #collects a subject, recipient, attachment, and a message you'd like to send to a user" 
			clear
			read -p "subject: " subject
			read -p "recipient: " recep
			read -p "attachment: " attachment
			read -p "your message: " message
			currentdir=$(pwd)
			echo ""$message"" | mail -s ""$subject"" -a "$attachment" "$recep"
			;;
		b|B) #gives list of all logged in users
			clear
			finger | more -10
			;;

		c|C) #gives the date
			clear
			date
			;;
		d|D) #gives the calendar 
			clear
			cal
			;;
		e|E) #gives the current working directory
			clear
			pwd
			;;	
		f|F) #lists contents of current directory
			clear
			ls
			;;
		g|G) #requests a web address and performs an ip lookup
			clear
			read -p "Name of website: " webaddress
			nslookup "$webaddress"
			;;
		h|H) #gives you your fortune
			clear
			fortune
			;;
		i|I) #cat's a file
			clear
			read -p "Name of your file: " filetocat
			currentdir=$(pwd)
			"$currentdir"/"$filetocat"
			;;

		j|J) #takes you out of the program
			clear
			echo "thank you"	
			;;
		*) #catch all condition, if not a-j
			clear
			echo "$userltr is not a valid input"
			;;
	
	esac
	done	
		
