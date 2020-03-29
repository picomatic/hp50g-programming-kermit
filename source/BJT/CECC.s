@CECC.s - Common emitter and common collector impedance calculation
@Dynamic pi model is used, r‡and ro are considered
<<
 "COMMON EMITTER & COLLECTOR"
{
{ "R1:" "Enter R1" 0 }
{ "R2:" "Enter R2" 0 }
{ "RC:" "Enter RC" 0 }
{ "RE:" "Enter RE" 0 }
{ "Ic:" "Enter collector current" 0 }
{ "Va:" "Enter early voltage" 0 }
{ "ß:" "Enter ß" 0 }
}
2
{ }
{ 1E3 1E3 0 0 0 100 100}
INFORM
DROP OBJ-> DROP
-> R1 R2 Rc Re Ic Va B
   <<
   'B*25E-3/Ic' EVAL 'r‡' STO
   'Va/Ic' EVAL 'ro' STO
   'INV(INV(R1)+INV(R2))' EVAL 'Rb' STO   
   'INV(INV(Rb)+INV(r‡+(B+1)*(Re*(Rc+ro)/(Rc+Re+ro))))' EVAL 'Zi' STO
   'INV(INV(Rc)+INV(ro+Re*(Rb+r‡+B*ro)/(Re+Rb+r‡)' EVAL 'Zc' STO
   'INV(INV(Re)+INV(r‡/B))' EVAL 'Ze' STO
   '-B*INV(INV(Rc)+INV(ro))/(r‡+(B+1)*Re)' EVAL 'AvCB' STO
   '(B+1)*Re/(r‡+(B+1)*Re)' EVAL 'AvEB' STO
   
   Zi Zc Ze 3 ->LIST 'IMPED' STO
   AvCB AvEB 2 ->LIST 'GAIN' STO
   ro r‡ 2 ->LIST 'RO' STO  
 
   "Result: Impedanc"
   {
   { "Zi =" "Input impedance" 0 }
   { "Zc =" "Zo into collector" 0 }
   { "Ze =" "Zo into emiter" 0 }
   }
   { 1 1 }
   IMPED
   DUP
   INFORM
   DROP DROP

   "Result: Early effect ro and r‡"
   { 
   { "ro =" "ro resistance value" 0 }
   { "r‡ =" "r‡ resistance value" 0 }
   }
   { 1 1 }
   RO
   DUP
   INFORM
   DROP DROP

   "Results: Gain"
   {
   { "AvCB=" "Gain Colector/Base" 0 }
   { "AvEB=" "Gain Emisor/Base" 0 }
   }
   { 1 1 }
   GAIN
   DUP
   INFORM
  >>
  DROP DROP
  { r‡ ro Zi Zc Ze Rb AvCB AvEB IMPED GAIN RO} PURGE
>>
