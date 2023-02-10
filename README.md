# Sysadminchallenge
Sysadmin challenge
Here are three codes for the Sysadmin challenge

* Question 8 - script_1.sh

First code is a bash script, a while loop is defined for reading each line of an input file.
The input file contains several server names.
The code simply uses ssh to access server names and execute some linux commands such as uname and hostname
The purpose is to verify the linux version, ip, servername and access date.
All these information is printed in the servers_versions.txt file

* Question 9 - script_2.sh

Second file is a bash script. A while loop is defined for reading each line of an input file.The input file contains several ip numbers in the first position of each line.First step the bash implements an if statement that verifies if an ip is not validSecond step the bash implements an if statement to populate an array with a fake ip list.Third step the bash analyses if the fake ip from some line is already inserted in the array with fake ip list, if 'yes' the line of the document is deleted. The line index is adjusted before the line is erased.

* Question 10 - adjustColumns.py
 
Third file is a python code. It reads a txt file and uses python csv read and write modules to implement the requirements. Fist step the code count the maximum widths of each columnsSecond the code will keep the max widths for columns 1 and 2 to generate the same space and define a fixed 3 space for other columns.Third, the code will write each row using the zip function to adjust the space between rows.
