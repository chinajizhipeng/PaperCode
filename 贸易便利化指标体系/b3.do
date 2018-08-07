use E:\论文学习\论文\贸易便利化\dta\gert2008处理完.dta,clear
drop b1 b2 d3
drop country
rename b3 b32008
reshape long b3,i(iso) j(year)
rename b3 b3fix
save E:\论文学习\论文\贸易便利化\dta\gert2008b3.dta,replace
use E:\论文学习\论文\贸易便利化\dta\贸易便利化指标待补漏.dta,clear
merge 1:1 iso3 year using E:\论文学习\论文\贸易便利化\dta\gert2008b3.dta
drop if _merge == 2
replace b3 = b3fix if  year == 2008
drop _merge
drop b3fix
save E:\论文学习\论文\贸易便利化\dta\贸易便利化指标待补漏.dta,replace
