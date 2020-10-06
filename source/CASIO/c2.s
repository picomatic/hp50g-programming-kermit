@c1.s - Change in terminal voltage of R in RC series circuit
<< 
"Change in terminal voltage of R <CR>in RC series circuit"
{ ":Vr:<CR>:V:<CR>:C:<CR>:R:<CR>:t:" 
{ 1. 0. } V } INPUT

OBJ-> -> Vr V C R t
<<
 IF 'Vr==0' THEN
  'Vr=V*EXP(-(t/(R*C)))'
  'V*EXP(-(t/(R*C)))' ->NUM
 ELSE IF 'V==0' THEN
  'V=Vr/EXP(-t/C/R)'
  'Vr/EXP(-t/C/R)' ->NUM
 ELSE IF 'C==0' THEN
  'C=-t/LN(Vr/V)/R'
  '-t/LN(Vr/V)/R' ->NUM
 ELSE IF 'R==0' THEN
  'R=-t/C/LN(Vr/V)'
  '-t/C/LN(Vr/V)' ->NUM
 ELSE IF 't==0' THEN
  't=-LN(Vr/V)*C*R'
  '-LN(Vr/V)*C*R' ->NUM
 END
 END
 END
 END
 END
>>
>>
