* -------------------------------- *
* Variablen erstellen 
* Index bildung
* -------------------------------- *

cd "D:\Datenspeicher\BIBB_BAuA" // wo liegt der Datensatz?
use "BIBBBAuA_2018_suf1.0.dta", clear


tab1 F700_02 F700_10, nol
mvdecode F700_02 F700_10, mv(9)

recode F700_02 (4=1) (3=2) (2=3) (1=4) (else=.), into(F700_02_rev)
* gen index = (F700_02_rev + F700_10)/2 // !missings
egen nonmiss = rownonmiss(F700_02_rev F700_10)
gen index = (F700_02_rev + F700_10)/nonmiss


