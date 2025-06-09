xtitre1(s,l,c)
Prgm
Local i,d,pic
c→y
For i,1,dim(s)
 PxlText mid(s,i,1),l,y
 y+7→y
EndFor
StoPic pic,l,c,7*dim(s),8
RclPic pic,l+1,c
RclPic pic,l,c+1
RclPic pic,l+1,c+1
EndPrgm