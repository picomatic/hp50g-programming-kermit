@rc.s - RC time
<< 
"RC time, input 0 to solve R,C or T" 
{ ":R:<CR>:C:<CR>:T:" 
{ 1. 0. } V } INPUT

OBJ-> -> R C T
<<
IF 'R==0' THEN
 'T/C' ->NUM
ELSE
 IF 'C==0' THEN
  'T/R' ->NUM
 ELSE
  IF 'T==0' THEN
  'R*C' ->NUM
  END
 END
END
>>
>>
