<< 
"Low pass filter, type 0 for solve" 

{":F:<CR>:C:<CR>:R:" 

{ 1. 0. } V } INPUT

OBJ-> -> F C R
<<
  IF 'F==0' THEN
   '1/(2*<PI>*R*C)' ->NUM
   ELSE IF 'C==0' THEN
    '1/(2*<PI>*R*F)' ->NUM
    ELSE IF 'R==0' THEN
     '1/(2*<PI>*C*F)' ->NUM
    END
   END
  END
>>
>>
