* -------------------------------- *
* Kapitel 7: Zusammenhangsmaße
* -------------------------------- *

use "D:\Datenspeicher\BIBB_BAuA/BIBBBAuA_2018_suf1.0.dta", clear
mvdecode zpalter, mv(9999)
summarize zpalter

* -------------------------------- *
* ttest
* t-test  vs. hypothetischen Wert
ttest zpalter==47.4

* t-Test Gruppenvergleich
ttest zpalter, by(S1) unequal

* cohen's D
* esize twosample varname, by(catvar)

* eta

* p < 0.05 


* verbundener t-Test
webuse bpwide, clear
list in 1/5
browse bp_before bp_after
ttest bp_before==bp_after

* -------------------------------- *
* Korrelation

	use "D:\Datenspeicher\BIBB_BAuA/BIBBBAuA_2018_suf1.0.dta", clear
	mvdecode zpalter, mv(9999)
	replace F231 =  . if F231 > 99
	mvdecode F231 F200 F1408, mv(97/99)
		
pwcorr zpalter F231, sig
pwcorr zpalter F231  F200 F1408, sig

* Rangkorrelation 
spearman zpalter F231

	
* -------------------------------- *
* tabellenbasierte Zusammenhangsmaße

	tab S3
	tab S3, nol
	cap drop educ
	recode S3 (2/4 = 1 "Haupt")(5/6 = 2 "mittlere Reife") (7/9 = 3 "(Fach-)Abi") (else = .), into(educ)
	tab S3 educ
	
	tab F600_12
	tab F600_12, nol
	mvdecode F600_12, mv(9)
	
tab F600_12 educ // finale Tabelle
ktau F600_12 educ // Kendall's tau
tab F600_12 educ, chi V gamma // chi cramer's V gamma

tab F600_12 educ, nofreq chi V gamma

*Indifferenztabelle:
tab F600_12 educ, nofreq expected


