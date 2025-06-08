tap(aa,bb)
Prgm
RplcPic chpic1,aa+4,bb+31
pausé(10)
For i,1,3
 pausé(4)
 RplcPic #("chpic"&string(i)),aa+4,bb+31
EndFor
EndPrgm