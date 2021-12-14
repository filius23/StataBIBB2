* ---------------------- *
* Kapitel 10 
* macros
* ---------------------- *


* globals
glo x 1
dis ${x}

* locals
loc y 2
dis `y'

dis `y'

* ------------------------
* pfade mit globals
glo pfad "D:\Projekt\daten\BIBB_BAuA" // wo liegt der Datensatz?
dis "${pfad}/BIBBBAuA_2018_suf1.0.dta"

use "${pfad}/BIBBBAuA_2018_suf1.0.dta", clear // laden des Datensatzes

* ------------------------
glo pfad "C:\Projekte\Micha" // wo liegt der Datensatz bei Alex?
glo pfad "D:\Arbeit\Alex"    // wo liegt der Datensatz bei Micha?

glo prog "${pfad}/prog"  
glo data "${pfad}/data"
glo log  "${pfad}/log"