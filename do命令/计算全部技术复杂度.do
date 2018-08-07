 use E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\技术复杂度\计算的数据.dta,clear
drop _merge  dva
collapse (sum) v, by(iso3 year)
tostring year,replace
gen iso3year=iso3+year
rename v X
save E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\技术复杂度\全部技术复杂度1.dta,replace


use E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\技术复杂度\计算的数据.dta,clear
drop _merge  dva
tostring year,replace
gen iso3year=iso3+year
merge m:1 iso3year using E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\技术复杂度\全部技术复杂度1.dta

gen x = v/X 
collapse (sum) x, by(hs1996 year)
rename x x2
tostring hs1996,replace
gen hs1996year=hs1996+year
save E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\技术复杂度\全部技术复杂2.dta,replace

use E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\技术复杂度\计算的数据.dta,clear
drop _merge  dva
tostring year,replace
gen iso3year=iso3+year
tostring hs1996,replace
gen hs1996year=hs1996+year

merge m:1 iso3year using E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\技术复杂度\全部技术复杂度1.dta
drop _merge
merge m:1 hs1996year using E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\技术复杂度\全部技术复杂2.dta

save E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\技术复杂度\全部技术复3.dta,replace

use E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\技术复杂度\全部技术复3.dta,clear
gen x=v/X
gen w=x/x2
gen wy=w*rgdp
collapse (sum) wy ,by(hs1996 year)  //产品层面技术复杂度
rename wy prody
save E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\技术复杂度\全部技术复杂度产品层面.dta,replace

use E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\技术复杂度\全部技术复3,clear
merge n:1 year hs1996 using E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\技术复杂度\全部技术复杂度产品层面.dta
drop _merge
gen p=v/X
gen expy=p*prody
collapse (sum) expy,by(iso3 year)
save E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\技术复杂度\全部技术复杂度国家层面.dta,replace
















