/*/ label verändern
* -> ,replace  --> nur die explizit genannten
lab def dummy_lab 0 "Nein" , replace
labelbook dummy_lab

* -> , modify add
label define dummy_lab 0 "Nein" 1 "Ja" .k "keine Angabe" .d "Datenfehler"
label define dummy_lab 0 "Nein!", modify
labelbook dummy_lab
*/
