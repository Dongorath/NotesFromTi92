freecel()
Prgm
Local gagne,perdu,pourcent,perd1,p1pc
setMode("Exact/Approx","APPROXIMATE")
Dialog
 Title "Statistiques"
 Text "Nombre de parties :"
 Request "_ gagnées ",gagne
 Request "_ perdues ",perdu
EndDlog
expr(gagne)→gagne
expr(perdu)→perdu
gagne/(gagne+perdu)→pourcent
gagne/perdu→perd1
-((int(pourcent*100)-99)*gagne+(int(pourcent*100)+1)*perdu)/(int(pourcent*100)-99)→p1pc
string(int(pourcent*10000)/100)→pourcent
string(int(perd1*100)/100)→perd1
string(int(p1pc*100)/100)→p1pc
Dialog
 Title "Résultats"
 Text "Pourcentage de réussite : "&pourcent&"%"
 Text "Nombre de parties à gagner pour une"
 Text "de perdue : "&perd1
 Text "Nombre de parties à gagner pour"
 Text "augmenter d'un pourcent : "&p1pc
EndDlog
setMode("Exact/Approx","EXACT")
EndPrgm