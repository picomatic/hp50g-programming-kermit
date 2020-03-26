<< -> DIM VNAME
  << { DIM DIM } 0 CON VNAME STO
    1 DIM FOR I
      1 DIM FOR J
        VNAME { I J } I J * PUT
      NEXT
    NEXT
    VNAME VISITB
  >>
>>
