
* -------------------------------- *
* Gewichtung 
* zurück zur ETB18
use "D:\Datenspeicher\BIBB_BAuA/BIBBBAuA_2018_suf1.0.dta", clear
tabulate S1 // ungewichtet

// pweight -> anteile innerhalb der Stichprobe
svyset _n [pweight=gew2018]
svy: tabulate S1 , col count format(%8.2f)

// "hochgewichten" mit Hochrechnungsfaktor
tabulate S1 [fweight=gew2018_hr17] // Fehlermeldung
tabulate S1 [fweight=round(gew2018_hr17)] // runden führt evtl. zu Abweichung 

tabulate S1 [fweight=round(gew2018_hr17*100)] // runden führt evtl. zu Abweichung 


* -------------------------------- *
* Gewichtung 
* 4 Erstellen Sie eine Häufigkeitsauszählung der Ausbildungsabschlüsse - zunächst ohne und dann mit Gewichtung. Verwenden Sie sowohl die `pweights'  als auch die `fweights' an.

use "D:\Datenspeicher\BIBB_BAuA/BIBBBAuA_2018_suf1.0.dta", clear
tabulate  m1202 // ungewichtet


svyset _n [pweight=gew2018]
svy: tabulate m1202 , col count format(%10.3f)


tabulate m1202 [weight=gew2018] // Fehlermeldung
tabulate m1202 [weight=round(gew2018)] // runden führt zu Abweichung - Vergleich mit svy: Ergebnis
tabulate m1202 [weight=round(gew2018*100 000)]

tabulate m1202 [weight=round(gew2018_hr17)]
tabulate m1202 [weight=round(gew2018_hr17*10)]

dis %20.3fc 37434185 / 10