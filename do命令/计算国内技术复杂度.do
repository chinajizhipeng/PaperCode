 use E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\技术复杂度\计算的数据.dta,clear
gen bx=v*dva
collapse (sum) bx, by(iso3 year)
tostring year,replace
gen iso3year=iso3+year
rename bx BX  //一国国内增加值全部
save E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\技术复杂度\国内技术复杂度1.dta,replace


use E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\技术复杂度\计算的数据.dta,clear
drop  _merge
tostring year,replace
gen iso3year=iso3+year
merge m:1 iso3year using E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\技术复杂度\国内技术复杂度1.dta

gen bx=v*dva
gen bx1 = bx/BX  //第一个比值
collapse (sum) bx1, by(hs1996 year)
rename bx1 bx2  //某产品全部国家占比之和
tostring hs1996,replace
gen hs1996year=hs1996+year
save E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\技术复杂度\国内技术复杂度2.dta,replace

use E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\技术复杂度\计算的数据.dta,clear
tostring year,replace
gen iso3year=iso3+year
tostring hs1996,replace
gen hs1996year=hs1996+year
drop _merge
merge m:1 iso3year using E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\技术复杂度\国内技术复杂度1.dta
drop _merge
merge m:1 hs1996year using E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\技术复杂度\国内技术复杂度2.dta

save E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\技术复杂度\国内技术复杂度3.dta,replace

use E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\技术复杂度\国内技术复杂度3.dta,clear
gen bx=v*dva
gen x=bx/BX
gen w=x/bx2
gen wy=w*rgdp
collapse (sum) wy ,by(hs1996 year)  //产品层面技术复杂度
rename wy NEWprody
save E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\技术复杂度\国内技术复杂度产品层面.dta,replace

use E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\价格计算\1999-2011产品质量水平.dta,clear
destring hs6 ,gen(hs1996)
tostring hs1996,replace
rename t year
tostring year ,replace
merge m:m hs1996 year using E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\技术复杂度\国内技术复杂度产品层面.dta
gen qPRODY_NEW=(qk^0.2)*NEWprody
drop _merge
drop if missing(NEWprody)
save  E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\技术复杂度\NEWPRODY.dta,replace

use E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\技术复杂度\国内技术复杂度产品层面.dta,clear
use E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\价格计算\1999-2011产品质量水平.dta,clear
destring hs6,gen (hs1996)
tostring hs1996,replace
rename t year
tostring year,replace
merge 1:1 hs1996 year using E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\技术复杂度\国内技术复杂度产品层面.dta
gen qPRODYNEW=(qk^0.2)*PRODY_NEW
drop _merge
drop if missing(qPRODYNEW)
save  E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\技术复杂度\NEWPRODY.dta,replace
use E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\技术复杂度\NEWPRODY.dta,clear
merge 1:1 hs1996 year using E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\技术复杂度\国内技术复杂度产品层面.dta


use E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\技术复杂度\国内技术复杂度3,clear
drop _merge
merge n:1 year hs1996 using E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\技术复杂度\NEWPRODY.dta
gen bx=v*dva
gen p=bx/BX
gen Nexpy=p*NEWprody
collapse (sum) Nexpy,by(iso3 year)
save E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\技术复杂度\国内技术复杂度国家层面.dta,replace
    