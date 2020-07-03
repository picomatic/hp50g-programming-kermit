# hp50g-programming-kermit

#What this set of scripts/ programs does:
You can type programs in a normal text editor and send them to your calculator. Now this is work in progress so not everything is implemented. 
Use this a starting point. hp.sh contains the converting engine.

#At the moment these special charakters are supported:
#3C 43 52 3E        #<CR>   return
#3C 50 49 3E        #<PI>   pi
#3C 53 51  52 54 3E #<SQRT> Square root

example line:
'1/(2*<PI>*<SQRT>(L*C))' ->NUM
In the example above the special characters are used.

#On your calculator:
Navigate to the directory where you want to upload programs.

Activate server:
Apps > I/O functions(2) > start server(6)

#On your PC (linux)
cd into the "source" directory

If you want to send all programs, type
./sendall <DIR NAME>

example:
./sendall BJT

If you want to send a single program, type
!!warning <PROGRAM NAME> without the .s!!
./hp.sh <DIR NAME>/<PROGRAM NAME>

example:
./hp.sh BJT/CECC
