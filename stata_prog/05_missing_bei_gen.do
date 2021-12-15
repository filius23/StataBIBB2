


mvdecode nuts2  F233_nuts2, mv(97/99)
drop ao_wo
gen ao_wo  =  nuts2 ==  F233_nuts2 if !missing(F233_nuts2) | !missing(nuts2)
gen ao_wo2 =  nuts2 ==  F233_nuts2 if !missing(F233_nuts2) & !missing(nuts2)

list nuts2 F233_nuts2 ao_wo* if missing(F233_nuts2) | missing(nuts2), nol
tab ao_wo* if missing(F233_nuts2) | missing(nuts2), nol m


