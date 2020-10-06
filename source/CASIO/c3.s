@c3.s - Time constant for an RC series circuit 
<< 
"Time constant for an RC series circuit
  -/////----||---
  |__Vr__|
  |______V______|"

{ ":Vr:<CR>:V:<CR>:C:<CR>:R:<CR>:t:" 
{ 1. 0. } V } INPUT

OBJ-> -> Vr V C R t
<<
 IF 'Vr==0' THEN
  'Vr=V*EXP(-(t/(R*C)))'
  'V*EXP(-(t/(R*C)))' ->NUM "Vr" ->TAG
 ELSE IF 'V==0' THEN
  'V=Vr/EXP(-t/C/R)'
  'Vr/EXP(-t/C/R)' ->NUM "V" ->TAG
 ELSE IF 'C==0' THEN
  'C=-t/LN(Vr/V)/R'
  '-t/LN(Vr/V)/R' ->NUM "C" ->TAG
 ELSE IF 'R==0' THEN
  'R=-t/C/LN(Vr/V)'
  '-t/C/LN(Vr/V)' ->NUM "R" ->TAG
 ELSE IF 't==0' THEN
  't=-LN(Vr/V)*C*R'
  '-LN(Vr/V)*C*R' ->NUM "t" ->TAG 
 END
 END
 END
 END
 END
>>
>>
