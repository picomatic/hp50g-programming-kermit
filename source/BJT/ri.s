@ri.s - Calculate input impedance BJT
<< 
"Input Impedance" 
{ ":RB:<CR>:R2:<CR>:RE:<CR>:B:" 
{ 1. 0. } V } INPUT
OBJ-> -> RB R2 RE B
'1/(1/RB+1/R2+1/(B*RE))' ->NUM
>>
