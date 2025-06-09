xtitre2(t,r,c)
Prgm
Local i,d,tmp
c→d
For i,1,dim(t)
 PxlText mid(t,i,1),r,d
 d+7→d
EndFor
StoPic tmp,r,c,7*dim(t),8
RclPic tmp,r+1,c+1
EndPrgm