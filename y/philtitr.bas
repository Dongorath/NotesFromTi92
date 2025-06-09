philtitr(t)
Prgm
local c,d,i,j,pic
119-dim(t)*15→d
for i,0,9
 pxlline i,0,i,4
endfor
stopic pic,0,0,5,10
clrdraw
pxltext t,95,95
for i,0,7
 for j,0,47
  if pxltest(95+i,95+j)
   rclpic pic,15+i*10,j*5+d
 endfor
endfor
EndPrgm