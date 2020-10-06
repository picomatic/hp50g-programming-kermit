%%HP: T(3)A(R)F(.);
@xc.s - Capacitor Xc
\<< 
"Xc for f" 
{":F:\010:C:\010:Xc:" 
{ 1. 0. } V } INPUT
OBJ\-> \-> F C Xc
\<<
 IF 'F==0' THEN
   '1/(2*\pi*Xc*C)' \->NUM
 ELSE IF 'C==0' THEN
   '1/(2*\pi*F*Xc)' \->NUM
 ELSE IF 'Xc==0' THEN
   '1/(2*\pi*F*C)' \->NUM
 END
 END
 END
\>>
\>>
