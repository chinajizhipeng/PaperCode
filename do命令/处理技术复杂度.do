use E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\年份加总\1998-2011.dta,clear
rename id iso3
destring hs6 ,gen(hs1996) force
merge m:m hs1996 using E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\数据合并\分类匹配.dta  // 匹配分类标准
drop _merge
decode isic2,gen (isic)
gen counsector=iso3+isic
rename t year
merge m:m counsector year using E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\VSS\dva.dta
drop if missing(isic2) 
drop _merge
replace dva=1 if dva==.             // 匹配DVA

merge m:m iso3 year using E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\GDP\rgdp.dta   //匹配GDP
drop if missing(rgdp)              
drop _merge      //处理完后的数据
save E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\技术复杂度\计算的数据.dta

*计算技术复杂度
use E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\技术复杂度\计算的数据.dta,clear
drop _merge      
gen bx=dva*v
collapse (sum) bx, by(hs1996 year)
rename bx jiazongbx1
save E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\技术复杂度\bs加总1.dta,replace
use E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\技术复杂度\计算的数据.dta,clear
drop _merge
merge m:1 hs1996 year using E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\技术复杂度\bs加总1.dta
gen bx=dva*v
gen m1=bx/jiazongbx1
save E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\技术复杂度\有m1.dta,replace
collapse (sum) m1, by(iso3 year)
rename m1 m2 
save E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\技术复杂度\bs加总2.dta,replace
use E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\技术复杂度\有m1.dta,clear
drop _merge
merge m:1 iso3 year using E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\技术复杂度\bs加总2.dta
drop _merge
gen w=m1/m2
gen wrgdp=w*rgdp
collapse (sum) wrgdp,by(year hs1996)
rename wrgdp PRODY_NEW
save E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\技术复杂度\PRODY.dta,replace

use E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\价格计算\1999-2011产品质量水平.dta,clear
destring hs6,gen (hs1996)
rename t year
merge 1:1 hs1996 year using E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\技术复杂度\PRODY.dta
gen qPRODY_NEW=(qk^0.2)*PRODY_NEW
drop _merge
drop if missing(qPRODY_NEW)
save  E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\技术复杂度\NEW_PRODY.dta,replace




