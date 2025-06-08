balle(aa,bb,tt)
Prgm
RplcPic fepic,aa+5,bb
For i,bb-5,tt,-5
 RplcPic fepic,aa+5,i
 XorPic fepic,aa+5,i+5
EndFor
EndPrgm