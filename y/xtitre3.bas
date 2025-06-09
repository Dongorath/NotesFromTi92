xtitre3(t,r,c)
Prgm
local i,d,tmp
c→d
for i,1,dim(t)
 pxltext mid(t,i,1),r,d
 d+7→d
endfor
stopic tmp,r,c,7*dim(t),8
rclpic tmp,r+1,c+1
rclpic tmp,r,c+1
EndPrgm