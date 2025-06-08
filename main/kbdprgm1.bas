kbdprgm1()
Prgm
setMode("Graph","FUNCTION")
setMode("Display Digits","FLOAT")
setMode("Angle","RADIAN")
setMode("Exponential Format","NORMAL")
setMode("Complex Format","RECTANGULAR")
setMode("Vector Format","RECTANGULAR")
setMode("Pretty Print","ON")
setMode("Split Screen","FULL")
setMode("Base","DEC")
setMode("Exact/Approx","EXACT")
setMode("Split 1 App","Home")
ClrDraw
setGraph("coordinates","rect")
setGraph("graph order","seq")
setGraph("grid","off")
setGraph("axes","on")
setGraph("leading cursor","off")
setGraph("labels","off")
-5→xmin
5→xmax
1→xscl
-5→ymin
5→ymax
1→yscl
2→xres
setUnits({"si"})
ClrHome
EndPrgm