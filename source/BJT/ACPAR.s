@ACPAR.s - AC parameters BJT
<<
"INPUT DATA"
{
 { "B:" "Beta" 0 }
 { "Ic:" "Collector current" 0 }
 { "Va:" "Early voltage" 0 }
}
1
{ }
{ 100 0 100}
INFORM
DROP OBJ-> DROP
-> B Ic Va
 <<
  'B*25E-3/Ic' EVAL 'rpi' STO
  'Ic/25E-3' EVAL 'gm' STO
  'Va/Ic' EVAL 'ro' STO
  'rpi/(B+1)' EVAL 're' STO
 >>
 rpi gm ro re 4 ->LIST 'L1' STO
"PARAMETROS EN AC"
{
{ "rpi=" "Diffusion resistance rpi" 0 }
{ "gm=" "Transconductance in Siemens" 0 }
{ "ro=" "Early resistance" 0 }
{ "re=" "Emitter resistance" 0}
}
{ 1 0 }
L1
DUP
INFORM
DROP DROP
{ rpi gm L1 ro re} PURGE
>>
