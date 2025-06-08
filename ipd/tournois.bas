tournois(n,p)
Prgm
[[3,0][5,1]]→points
For i,1,n
 Dialog
  Title "Choix de la "&string(i)&"e stratégie"
  Request "",strat
 EndDlog
 strat→#("str"&string(i))
EndFor
newMat(2,p)→partie
newMat(n,n)→tournoi
For i,1,n
 1→numpart
 For k,i,n
  1→numpart
  For numpart,1,p
   1→moi
   2→adv
   #(""&#("str"&string(i)))()→partie[1,numpart]
   1→adv
   2→moi
   #(""&#("str"&string(k)))()→partie[2,numpart]
  EndFor
  sum(seq(points[partie[1,l],partie[2,l]],l,1,p))→tournoi[i,k]
  sum(seq(points[partie[2,l],partie[1,l]],l,1,p))→tournoi[k,i]
 EndFor
EndFor
For i,1,n
 sum(seq(tournoi[i,j],j,1,n))→#("score"&string(i))
EndFor
newMat(2,n)→result
newList(n)→strats
newList(n)→scores
For i,1,n
 #("str"&string(i))→strats[i]
 #("score"&string(i))→scores[i]
EndFor
SortD scores,strats
For i,1,n
 strats[i]→result[1,i]
 scores[i]→result[2,i]
EndFor
resultᵀ→result
EndPrgm