@xc.s - Capacitor Xc
<< 
"Xc for f" 
{":F:<CR>:C:<CR>:Xc:" 
{ 1. 0. } V } INPUT
OBJ-> -> F C Xc
<<
 IF 'F==0' THEN
   '1/(2*<PI>*Xc*C)' ->NUM
 ELSE IF 'C==0' THEN
   '1/(2*<PI>*F*Xc)' ->NUM
 ELSE IF 'Xc==0' THEN
   '1/(2*<PI>*F*C)' ->NUM
 END
 END
 END
>>
>>
