* -------------------------------- *
* Session 2: Datensätze
* -------------------------------- *

use "BIBBBAuA_2018_suf1.0.dta", clear

* Fälle mit list anzeigen lassen
list intnr Bula gkpol Stib zpalter
list intnr Bula gkpol Stib zpalter in 11/12 // nur Zeile 11-12
list intnr Bula gkpol Stib zpalter in 11/12, nol

* Stata ist Zeilensensibel:
list intnr Bula
	gkpol Stib zpalter in 11/12 // Fehlermeldung

list intnr Bula gkpol Stib zpalter in 11/15 // dies ist ein kommentar

* mit /// können Zeilen verbunden werden:
list intnr Bula /// hier kann ein kommentar stehen
	gkpol Stib zpalter in 11/15 // hier geht es weiter, aber der Befehl endet mit dieser Zeile


* Häufigkeitstabelle ----------
tabulate m1202
tab m1202
tabulate m1202, nolabel

* labels ansehen -----------
describe m1202
d m1202
labelbook M1202


* missings 
tabulate m1202
replace m1202 = . if m1202 == -1
tabulate m1202
tabulate m1202, missing //  mit missing


replace m1202 = .a if m1202 == -1
replace m1202 = .b if m1202 == -2


// mvdecode
mvdecode F100_kldb2010_BOF F1609_kldb2010_BOF F1610_kldb2010_BOF, mv(-1)
mvdecode F100_*, mv(-1)
mvdecode F100_wib1, mv(-4/-1)

* mdesc für Übersicht
ssc install mdesc

mdesc m1202 /// Ausbildung
	F100_kldb2010_BOF /// BIBB-Berufsoberfeld f. Erwerbsberuf, KldB2010
	F1609_kldb2010_BOF /// BIBB-Berufsoberfeld f. Erwerbsberuf des Vaters, KldB2010 
	F1610_kldb2010_BOF F100_wib1

// kreuztabelle
tabulate m1202 S1

// zeilen und spaltenprozente
tabulate m1202 S1
tabulate m1202 S1, cell nofreq 	// rel häufigkeiten
tabulate m1202 S1, row nofreq 	// row -> Zeilenprozente
tabulate m1202 S1, col nofreq 	// col -> Spaltenprozente
tabulate m1202 S1, cell row col




// metrische Merkmale eher mit summarize:
tab zpalter
summarize zpalter
su zpalter

d zpalter
labelbook ZPALTER
mvdecode zpalter, mv(9999)
su zpalter

summarize zpalter F518_SUF // klappt auch mit mehreren Variablen

mvdecode zpalter F518_SUF, mv(9999 99998/99999)
summarize zpalter F518_SUF 


* ------------------- 
* wert in label 
tab m1202
describe m1202
numlabel M1202 , add // value label name
tabulate m1202
numlabel M1202 , remove
tabulate m1202

// für alle value labels
numlabel  , add // value label name