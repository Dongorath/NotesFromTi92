choix(aa,bb)
Prgm
Local aa1,aa2,aa3,aa4,aa5,aa6,bb1,bb2,bb3,bb4,bb5,bb6,c,i
6→aa1
15→aa2
31→aa3
40→aa4
31→aa5
15→aa6
23→bb1
37→bb2
37→bb3
23→bb4
9→bb5
9→bb6
RplPic barpic,aa,bb
0→c
-1→i
While not (c=49 or c50 or c=51 or c=52 or c=53 or c=54)
 getKey()→c
 mod(i+1,6)→i
 XorPic #("numpic"&string(i+1)),aa+#("aa"&string(i+1)),bb+#("bb"&string(i+1))
EndWhile
expr(char(c))→trch
RplcPic barpic,aa,bb
XorPic balpic,aa+#("aa"&char(c)),bb+#("bb"&char(c))
pausé(40)
EndPrgm