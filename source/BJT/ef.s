@ef.s - Calculate bias resistors R1 nd R2 emitter follower
<< 
"Bias val R1,R2 em. follower" 

{":Ub:<CR>:Uv:<CR>:HFE:<CR>:Re:" 

{ 1. 0. } V } INPUT

OBJ-> -> Ub Uv HFE Re
<<
  'Uv*R1/(R1+R2)=Ub' 
  'HFE*Re/10=(R1*R2)/(R1+R2)' 
  2
  ->ARRY
  'R1'
  'R2'
  2
  ->ARRY
  'Re*20' ->NUM
  'Re*20' ->NUM 
  2
  ->ARRY
  MSLV
>>
>>
