use D:\引力参数\matchpanel.dta,clear
keep yr firmn employment revenue
save F:\出口固定成本实证分析\firmn_data,replace

use F:\出口固定成本实证分析\cus-indu.dta,clear
collapse (sum) value,by (yr iso3 firmn)
gen id = iso3 + firmn 
drop iso3 firmn
reshape wide value,i(id) j(yr)
reshape long value,i(id) j(yr)
gen iso3 = substr(id,1,3)
gen firmn = substr(id,4,.)
drop id
save F:\出口固定成本实证分析\balance.dta,replace

use F:\出口固定成本实证分析\balance.dta,clear
merge n:1 yr firmn using F:\出口固定成本实证分析\firmn_data
keep if _merge == 3
drop _merge

save F:\出口固定成本实证分析\balance_fin.dta,replace
