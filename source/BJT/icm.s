@icm.s - Ebers Moll equation BJT
<< 
"Ebers Moll equation IC at 20 degrees"
{ ":VBE:<CR>:Is:<CR>:Ic:" 
{ 1. 0. } V } INPUT

OBJ-> -> VBE Is Ic
<<
 IF 'Ic==0' THEN
  'Is*EXP(VBE/.0253)' ->NUM
 ELSE IF 'VBE==0' THEN
  '-(.0253*LN(Is/Ic))' ->NUM
 ELSE IF 'Is==0' THEN
  'Ic/EXP(VBE/.0253)' ->NUM
 END
 END
 END
>>
>>
