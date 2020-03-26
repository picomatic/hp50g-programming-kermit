@vd.s - Voltage devider
<< 
  "Voltage devider"
{":Ro:<CR>:R2:<CR>:Vi:<CR>:Vo:"
  { 1. 0. } V } INPUT  
  OBJ-> -> 
  Ro R2 Vi Vo 
<<  
  IF 'Ro==0' THEN
  '(Vo*R2)/(Vi-Vo)' ->NUM
  ELSE IF 'R2==0' THEN
  '(Vi-Vo)*Ro/Vo' ->NUM
  ELSE IF 'Vi==0' THEN
  '(Vo*R2+Vo*Ro)/Ro' ->NUM
  ELSE IF 'Vo==0' THEN
  '(Ro*Vi)/(R2+Ro)' ->NUM
  END
  END
  END
  END
>>
>>
