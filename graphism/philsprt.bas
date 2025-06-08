philsprt()
Prgm
Local lg,nbc,l,c,dmc,dmm,lcs,ccs,curs,k,chq,lst,pic,dm
Define curs(l,c,dmc)=Prgm
 PxlLine l*dmc,c*dmc,(l+1)*dmc,(c+1)*dmc,-1
 PxlLine (l+1)*dmc,c*dmc,l*dmc,(c+1)*dmc,-1
EndPrgm
Lbl deb
y\xgraphin()
10→nbc
0→lcs
0→ccs
{}→lst
Dialog
 Title "Sprite"
 Request "Dimension côté ?",nbc
EndDlog
expr(nbc)→nbc
int(102/nbc)→dmc
dmc*nbc→dmm
For lg,0,dmm,dmc
 PxlLine 0,lg,dmm,lg
 PxlLine lg,0,lg,dmm
EndFor
For l,0,dmc
 PxlLine l,238-dmc,l,238
EndFor
StoPic pic,0,238-dmc,dmc,dmc
Try
 dim(matpic)→dm
 For l,0,dm[1]-1
  For c,0,dm[2]-1
   If matpic[l+1,c+1]=1 Then
    RclPic pic,l*dmc,c*dmc
	PxlOn int(51-nbc/2)+l,119+int(dmm/2-nbc/2)+c
   EndIf
  EndFor
 EndFor
Else
 ClrErr
EndTry
Loop
 curs(lcs,ccs,dmc)
 curs(lcs,ccs,dmc)
 getKey()→k
 If k=337 and ccs≠0
  ccs-1→ccs
 If k=340 and ccs≠nbc-1
  ccs+1→ccs
 If k=338 and lcs≠0
  lcs-1→lcs
 If k=344 and lcs≠nbc-1
  lcs+1→lcs
 If k=264 Then
  setMode("Split 1 App","Home")
  1→chq
  PopUp {"Continuer","Nouveau","Terminer"},chq
  If chq=2
   Goto deb
  If chq=3
   Goto fin
 EndIf
 If k=13 Then
  RclPic pic,lcs*dmc,ccs*dmc
  augment({lcs,ccs},lst)→lst
  PxlOn int(51-nbc/2)+lcs,119+int(dmm/2-nbc/2)+ccs
 EndIf
EndLoop
Lbl fin
list▶mat(lst,2)→mat
setMode("Split 1 App","Home")
Text "matrice dans ≪MAT≫"
Stop
EndPrgm