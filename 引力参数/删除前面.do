use C:\Users\123\Desktop\111.dta, clear
qui replace v=0 if v== .
drop if v == 0
sort id yr
bysort id: keep if _n==1
drop  v
rename yr fir_yr
save C:\Users\123\Desktop\2.dta,replace

use C:\Users\123\Desktop\111.dta, clear
merge n:1 id using C:\Users\123\Desktop\2.dta
drop _merge
drop if yr < fir_yr
