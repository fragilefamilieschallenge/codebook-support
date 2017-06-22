capture log close
log using searchwords.txt, text replace 
clear
import delimited using searchwords.csv, varnames(nonames)
expand 15000
save searchwords.dta, replace

clear
import delimited using FFC_step5_reshape_withlabels.csv, varnames(1)
gen searchstring = description + " " + labels_positive + " " + labels_negative
merge 1:1 _n using searchwords.dta, keep(match)
erase searchwords.dta
log close

log using search_results.txt, text replace
foreach v of varlist v* {
if "`v'" != "varname" {
	list  varname `v' searchstring if regexm(searchstring, `v') == 1, noobs string(100)
}
}
log close
