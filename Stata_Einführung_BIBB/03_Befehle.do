* -------------------------------- *
* 03 Befehle: Deskriptive Statistik 
* -------------------------------- *


use D:/Datenspeicher/BIBB_BAuA/BIBBBAuA_2018_suf1.0.dta, clear

* für missings:
d zpalter
labelbook ZPALTER
mvdecode zpalter, mv(9999)

* summarize
summarize zpalter
summarize zpalter, detail

* tabstat --------------------------------------
tabstat zpalter, s(mean median var cv)

* percentile
centile zpalter, centile(35)

* getrennt nach M/F:
tabstat zpalter, s(mean median var cv) by(S1)


* GINI Koeffizient -----------------------
ssc install fastgini // einmalig nötig
which fastgini // check
fastgini F518_SUF

* Gini für F & M getrennt
fastgini F518_SUF if S1 == 1
fastgini F518_SUF if S1 == 2
