# hp50g-programming-kermit

## What this set of scripts/ programs does:
You can type programs in a normal text editor and send them to your calculator. Now this is work in progress so not everything is implemented. 
Use this a starting point. hp.sh contains the converting engine.

## Before you start
Some programs (ckermit, bbe) are needed to run the scripts, so before using the hp.sh and sendall.sh, run:
    ./init.sh

## At the moment these special charakters are supported:
    <CR>   return
    <PI>   pi
    <SQRT> Square root

### example line:
    '1/(2*<PI>*<SQRT>(L*C))' ->NUM
    In the example above the special characters are used.

## On your calculator:
    Navigate to the directory where you want to upload programs.

### Activate server:
    Apps > I/O functions(2) > start server(6)

### On your PC (linux)
    cd into the "source" directory

    If you want to send all programs, type
    ./sendall.sh <DIR NAME>

    example:
    ./sendall.sh BJT

    If you want to send a single program, type
    !!warning <PROGRAM NAME> without the .s!!
    ./hp.sh <DIR NAME>/<PROGRAM NAME>  

    example:
    ./hp.sh BJT/CECC
