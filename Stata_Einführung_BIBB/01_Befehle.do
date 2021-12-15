* -------------------------------- *
* Session 1: erste Schritte
* -------------------------------- *
﻿// Taschenrechnerfunktion
display 3 + 12
display sqrt(9)

// Datensatz einlesen

cd "C:/Kurse/Stata_BIBB/data/" // wo liegt der Datensatz?
pwd
use "BIBBBAuA_2018_suf1.0.dta"

use "C:/Kurse/Stata_BIBB/data/BIBBBAuA_2018_suf1.0.dta"

describe, short // infos zum Datensatz
describe F209 // Infos zu F209
d F209* // infos zu allen Variablen, die mit F209 beginnen

labelbook F209


browse // Datensatzsatz ansehen
browse intnr Bula gkpol Stib zpalter // nur einige Variablen ansehen
browse intnr Bula gkpol Stib zpalter, nol // dahinter liegende Zahlencodes

list  intnr Bula gkpol Stib zpalter  in 1/10 // in ausgabefenster anzeigen
list  intnr Bula gkpol Stib zpalter  in 1/10, nol // auch hier ohne labels anzeigen 

// Variablen & Bezeichnungen suchen
lookfor "Englisch"
lookfor "englisch" // Groß/Kleinschreibung wird ignoriert


* -----------------------
* log files 

pwd
log using "01_log.txt" , replace text 
use "D:\Datenspeicher\BIBB_BAuA\BIBBBAuA_2018_suf1.0.dta"
log close 

* anderer Pfad:
global log "D:\oCloud\Home-Cloud\Lehre\BIBB\StataBIBB2\Stata_Einführung_BIBB"

display "${log}"
log using "${log}/01_log.txt" , replace text 


log using "D:\oCloud\Home-Cloud\Lehre\BIBB\StataBIBB2\Stata_Einführung_BIBB/01_log.txt" , replace text 

use "D:\Datenspeicher\BIBB_BAuA\BIBBBAuA_2018_suf1.0.dta"
.
.
.
.
.

log close 


* SPSS import
import spss using "D:\Datenspeicher\BIBB_BAuA\BIBBBAuA_2018_suf1.0.sav", clear