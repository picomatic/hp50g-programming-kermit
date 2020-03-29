@vt.s - Calculate VT BJT 
<< 
"Calculate VT BJT, enter 0 to solve" 

{":VT:<CR>:T:" 

{ 1. 0. } V } INPUT

OBJ-> -> VT T
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
