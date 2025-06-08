pres(aa,bb)
Prgm
RplcPic gapic1,aa+15,bb+22
pausé(10)
For i,1,3
 pausé(8)
 RplcPic #("gapic"&string(i)),aa+15,bb+22
EndFor
EndPrgm