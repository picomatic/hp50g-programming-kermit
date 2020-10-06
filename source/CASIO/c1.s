@c1.s - Frequency of electric oscillation 
<< 
"Frequency of electric oscillation
|---||---|
|---~~---|
"
{ ":fo:<CR>:L:<CR>:C:" 
{ 1. 0. } V } INPUT

OBJ-> -> fo L C 
<<
 IF 'fo==0' THEN
  'fo=1/(2*<PI>*<SQRT>(L*C))'
  '1/(2*<PI>*<SQRT>(L*C))' ->NUM "fo" ->TAG
 ELSE IF 'L==0' THEN
  'L=1/(C*(2*<PI>*fo)^2)'
  '1/(C*(2*<PI>*fo)^2)' ->NUM "L" ->TAG
 ELSE IF 'C==0' THEN
  'C=1/(L*(2*<PI>*fo)^2)'
  '1/(L*(2*<PI>*fo)^2)' ->NUM "C" ->TAG
 END
 END
 END
>>
>>
