# Spectral_clustering

In questo capitolo applichiamo gli algoritmi spettrali su dati reali, ottenuti da un esperimento di microarray su oligonucleotidi di pazienti malati di leucemia.
Il set di dati iniziale contiene campioni di midollo osseo relativi a 38 pazienti, con
le relative intensità di espressione su 5000 geni. Abbiamo pre-processato questi dati
sostituendo tutte le intensità di espressione minori di 20 con il valore 20. Possiamo
dunque considerare i dati di interesse come una matrice A ∈ R
M×N,dove ai j rappresenta l’attivita dell’ i-esimo gene nel j-esimo campione.
Nel nostro caso M=5000 geni e N=38 pazienti, di cui 27 sono classificati come ALL
(leucemia linfoblastica acuta) e 11 come AML(leucemia mieloide acuta). Per quanto
riguarda i campioni affetti da ALL è possibile suddividerli in base al tipo di cellule in
ALL-B e ALL-T.
Costruiamo la matrice dei pesi W = A
TA, dove wi j rappresenta una misura di somiglianza tra il campione i e il campione j. Il risultato che ci attendiamo dal clustering
spettrale è quello di suddividere gli N pazienti in tre clusters che corrispondono alle
tre diverse classificazioni della leucemia.
In Fig.1 possiamo vedere il comportamento del vettore di Fielder nel raggruppare i
tre clusters. Abbiamo calcolato e graficato il comportamento di quest’ultimo con
MATLAB.
