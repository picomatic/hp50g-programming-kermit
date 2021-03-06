@BCMUN.s - Common base BJT
<<
 "COMMON BASE"
 {
  { "RE:" "Enter RE" 0}
  { "RB:" "Enter RB" 0}
  { "RC:" "Enter RC" 0}
  { "Ic:" "Enter total collector current" 0}
  { "Va:" "Early voltage" 0}
  { "�:" "Entr �" 0}
 }
 2
 {}
 { 0 0 0 0 100 100}
 INFORM
 DROP OBJ-> DROP
 -> Re Rb Rc Ic Va B
 �
  'B*25E-3/Ic' EVAL 'rpi' STO
  'Va/Ic' EVAL 'ro' STO
  'INV(INV(Re)+INV((ro+Rc)*INV(1+(Rc+ro*(B+1))/(Rb+rpi))))' EVAL 'Zi' STO
  'INV(INV(Rc)+INV(ro+Re*(B*ro+rpi+Rb)/(Re+rpi+Rb)))' EVAL 'Zo'STO
  '(Rc/(Rc+ro))*(1+B*ro/(rpi+Rb))' EVAL 'Av' STO
  Zi Zo Av 3 ->LIST 'RESUL' STO
  
  "RESULTADOS"
  {
   { "Zi=" "Input impedance" 0}
   { "Zo=" "Output impedance" 0}
   { "Av=" "Gain  colector/emitter" 0}
  }
  1
  RESUL DUP
  INFORM
 �
 
 DROP DROP
 { rpi ro Zi Zo Av RESUL} PURGE
�
