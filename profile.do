set linesize 80
qui use "D:\Datenspeicher\BIBB_BAuA/BIBBBAuA_2018_suf1.0.dta", clear
describe, short
set linesize 80
qui use "D:\Datenspeicher\BIBB_BAuA/BIBBBAuA_2018_suf1.0.dta", clear
describe F209
set linesize 80
qui use "D:\Datenspeicher\BIBB_BAuA/BIBBBAuA_2018_suf1.0.dta", clear
labelbook F209
set linesize 80
qui use "D:\Datenspeicher\BIBB_BAuA/BIBBBAuA_2018_suf1.0.dta", clear
describe F209*
     | intnr     Bula     gkpol       Stib   zpalter |
     |-----------------------------------------------|
  1. |   260   Berlin   500.000   Selbstst        41 |
  2. |   361   Berlin   500.000   Angestel        51 |
  3. |   491   Berlin   500.000   Arbeiter        49 |
  4. |   690   Berlin   500.000    Beamter        63 |
  5. |   919   Berlin   500.000   Angestel        41 |
     |-----------------------------------------------|
     | intnr   Bula   gkpol   Stib   zpalter |
     |---------------------------------------|
  1. |   260     11       7      4        41 |
  2. |   361     11       7      2        51 |
  3. |   491     11       7      1        49 |
  4. |   690     11       7      3        63 |
  5. |   919     11       7      2        41 |
     |---------------------------------------|
qui use "D:\Datenspeicher\BIBB_BAuA/BIBBBAuA_2018_suf1.0.dta", clear
tab m1202
set linesize 80
qui use "D:\Datenspeicher\BIBB_BAuA/BIBBBAuA_2018_suf1.0.dta", clear
qui mvdecode m1202 F100_kldb2010_BOF F1609_kldb2010_BOF F1610_kldb2010_BOF, mv(-1)
qui mvdecode F100_wib1, mv(-4/-1)
mdesc m1202 F100_kldb2010_BOF F1609_kldb2010_BOF F1610_kldb2010_BOF F100_wib1
set linesize 80
qui use "D:\Datenspeicher\BIBB_BAuA/BIBBBAuA_2018_suf1.0.dta", clear
qui mvdecode m1202, mv(-1)
tabulate m1202, missing
