roulette()
Prgm
FnOff
SetGraph("axes","off")
0→points
Dialog
 Title "Roulette Russe"
 Text ""
 Text "Ceci est un jeu de:"
 Text "  ■■■■■■■■■■■■■■■■■■■■ "
 Text "  ■  Roulette Russe  ■ "
 Text "  ■■■■■■■■■■■■■■■■■■■■ "
 Text ""
EndDlog
Dialog
 Title "Jeu"
 Text ""
 Text "Pour jouer, il suffit de"
 Text " choisir la place de la "
 Text " balle dans le barillet "
 Text " et de laisser faire le "
 Text "       HASARD…          "
 Text ""
EndDlog
Dialog
 Title "Bonne chance…"
 Text ""
 Text "Il ne me reste plus qu'a te"
 Text "        souhaiter:"
 Text "      BONNE CHANCE !"
EndDlog
Lbl deb
ClrDraw
PxlText "Choisit la place de la balle",5,5
PxlText "en tapant un chiffre entre 1 et 6",13,5
PxlText "Fais le bon choix…",50,120
choix(25,50)
rand(6)→hasard
ClrDraw
RplcPic bonpic,15,25
PxlText "Que la chance soit avec toi !",5,5
gun(21,160)
If trch=hasard Then
 balle(21,160,49)
 explo(15,25)
 0→hasard
EndIf
points+hasard→points
pausé(50)
If hasard=0 Then
 Text "Tu as "&string(points)&" points!"
 DelVar i,t,hasard,trch,points
 FnOn
 setGraph("axes","on")
 DispHome
 Stop
EndIf
Goto deb
EndPrgm