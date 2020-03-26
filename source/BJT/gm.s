@gm.s - Calculate gm BJT
<< 
"gm transistor gm=io/vi" 
{ ":gm:<CR>:io:<CR>:vi:" 
{ 1. 0. } V } INPUT

OBJ-> -> gm io vi
<<
IF 'gm==0' THEN
 'io/vi' ->NUM
ELSE
 IF 'io==0' THEN
  'gm*vi' ->NUM
 ELSE
  IF 'vi==0' THEN
  'io/gm' ->NUM
  END
 END
END
>>
>>
