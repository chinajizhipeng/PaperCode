 use E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\出口持续时间\有持续时间.dta,clear
 rename t year
merge m:m hs6 year using E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\技术复杂度\NEW_PRODY.dta
drop iso3 iso3hs6j  tt _merge iso3hs6 hs6 qk PRODY_NEW i
duplicates drop varname year, force   // 出口国+产品 为截面
save E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\出口持续时间\左删除后.dta,replace
use E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\出口持续时间\左删除后.dta,clear
merge n:n hs1996 using E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\数据合并\分类匹配.dta   //匹配ISIC分类
drop _merge
destring j ,gen (imper)
save E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\出口持续时间\左删除后+分类.dta,replace


use E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\出口持续时间\左删除后+分类.dta,clear
rename imper ii
merge n:n ii using E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\数据合并\国家匹配.dta 
drop j ii iso31 _merge
drop if hs1996 == .
save E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\回归数据\回归原始数据.dta,replace

use  E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\回归数据\回归原始数据.dta,clear

merge n:1 iso3 using E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\数据合并\收入组.dta 
drop _merge
drop if ins == .
rename iso3 importer
save E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\回归数据\回归原始数据有行业和国家分组.dta,replace
