* -------------------------------- *
* Kapitel 7: Inferenz - Hypothesentests und Gewichtung
* Lösungen
* -------------------------------- *

use "D:\Datenspeicher\BIBB_BAuA/BIBBBAuA_2018_suf1.0.dta", clear


* -----------------
* 1 Testen Sie die Hypothese, dass die eigentliche durchschnittliche Arbeitszeit 38.5 Stunden beträgt. Interpretieren Sie die Ergebnisse im Sinne einen rechts-, links- und beidseitigen Tests!
ttest az == 38.5

* -----------------
* 2 Testen Sie die Hypothese, dass ein signifikanter Unterschied in der Arbeitszeit zwischen Männern und Frauen besteht
ttest az, by(S1) unequal


* ---------------------- 
* 3  Untersuchen Sie den Zusammenhang zwischen der Wochenarbeitszeit und dem Einkommen der Befragten. Welches Maß ist das richtige?

	d	F518_SUF
	labelbook F518
	mvdecode F518_SUF, mv(99998/99999)
	
*Korrelationskoeffizient
pwcorr F518_SUF az, sig
// mittlerer Zusammenhang, stat. signifikant

* ---------------------- 
* 4 Untersuchen Sie den Zusammenhang zwischen der Häufigkeit von starkem Termin- oder Leistungsdruck `F411_01` und der dreistufigen Schulbildungsvariable `educ`.

* Vorbereitungen
	recode S3 (2/4 = 1 "Haupt")(5/6 = 2 "mittlere Reife") (7/9 = 3 "(Fach-)Abi") (else = .), into(educ)
	mvdecode F411_01, mv(9)
	
tab educ F411_01	
tab educ F411_01, nol // finale Tabelle
	
spearman educ F411_01 // Rangkorrelation
ktau 	 educ F411_01 // Kendall's tau
tab 	 educ F411_01, gamma  chi V // Gamma chi2 cramer's V

