*1998年数据
use E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\年份加总\1998数据加总前.dta,clear
collapse (sum) v,by(hs6)    // 计算1998年产品分类加总
rename v sumv
save E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\价格计算\1998产品加总.dta
use E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\年份加总\1998数据加总前.dta,clear
merge m:1 hs6 using E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\价格计算\1998产品加总.dta
drop _merge
drop if missing(t, hs6, hs1996, i ,j ,v ,q ,iso3 ,hs6iso3 ,sumv )
save E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\价格计算\1998待合并.dta  //处理份额和单价的数据

*1999年数据
use E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\年份加总\1999数据加总前.dta,clear
collapse (sum) v,by(hs6)    // 计算1999年产品分类加总
rename v sumv
save E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\价格计算\1999产品加总.dta
use E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\年份加总\1999数据加总前.dta,clear
merge m:1 hs6 using E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\价格计算\1999产品加总.dta
drop _merge
drop if missing(t, hs6, hs1996, i ,j ,v ,q ,iso3 ,hs6iso3 ,sumv )
save E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\价格计算\1999待合并.dta

*2000年数据
use E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\年份加总\2000数据加总前.dta,clear
collapse (sum) v,by(hs6)    // 计算2000年产品分类加总
rename v sumv
save E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\价格计算\2000产品加总.dta
use E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\年份加总\2000数据加总前.dta,clear
merge m:1 hs6 using E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\价格计算\2000产品加总.dta
drop _merge
drop if missing(t, hs6, hs1996, i ,j ,v ,q ,iso3 ,hs6iso3 ,sumv )
save E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\价格计算\2000待合并.dta

*2001年数据
use E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\年份加总\2001数据加总前.dta,clear
collapse (sum) v,by(hs6)    // 计算2001年产品分类加总
rename v sumv
save E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\价格计算\2001产品加总.dta
use E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\年份加总\2001数据加总前.dta,clear
merge m:1 hs6 using E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\价格计算\2001产品加总.dta
drop _merge
drop if missing(t, hs6, hs1996, i ,j ,v ,q ,iso3 ,hs6iso3 ,sumv )
save E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\价格计算\2001待合并.dta


*2002年数据
use E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\年份加总\2002数据加总前.dta,clear
collapse (sum) v,by(hs6)    // 计算2002年产品分类加总
rename v sumv
save E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\价格计算\2002产品加总.dta
use E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\年份加总\2002数据加总前.dta,clear
merge m:1 hs6 using E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\价格计算\2002产品加总.dta
drop _merge
drop if missing(t, hs6, hs1996, i ,j ,v ,q ,iso3 ,hs6iso3 ,sumv )
save E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\价格计算\2002待合并.dta


*2003年数据
use E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\年份加总\2003数据加总前.dta,clear
collapse (sum) v,by(hs6)    // 计算2003年产品分类加总
rename v sumv
save E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\价格计算\2003产品加总.dta
use E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\年份加总\2003数据加总前.dta,clear
merge m:1 hs6 using E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\价格计算\2003产品加总.dta
drop _merge
drop if missing(t, hs6, hs1996, i ,j ,v ,q ,iso3 ,hs6iso3 ,sumv )
save E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\价格计算\2003待合并.dta


*2004年数据
use E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\年份加总\2004数据加总前.dta,clear
collapse (sum) v,by(hs6)    // 计算2004年产品分类加总
rename v sumv
save E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\价格计算\2004产品加总.dta
use E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\年份加总\2004数据加总前.dta,clear
merge m:1 hs6 using E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\价格计算\2004产品加总.dta
drop _merge
drop if missing(t, hs6, hs1996, i ,j ,v ,q ,iso3 ,hs6iso3 ,sumv )
save E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\价格计算\2004待合并.dta


*2005年数据
use E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\年份加总\2005数据加总前.dta,clear
collapse (sum) v,by(hs6)    // 计算2005年产品分类加总
rename v sumv
save E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\价格计算\2005产品加总.dta
use E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\年份加总\2005数据加总前.dta,clear
merge m:1 hs6 using E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\价格计算\2005产品加总.dta
drop _merge
drop if missing(t, hs6, hs1996, i ,j ,v ,q ,iso3 ,hs6iso3 ,sumv )
save E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\价格计算\2005待合并.dta


*2006年数据
use E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\年份加总\2006数据加总前.dta,clear
collapse (sum) v,by(hs6)    // 计算2006年产品分类加总
rename v sumv
save E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\价格计算\2006产品加总.dta
use E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\年份加总\2006数据加总前.dta,clear
merge m:1 hs6 using E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\价格计算\2006产品加总.dta
drop _merge
drop if missing(t, hs6, hs1996, i ,j ,v ,q ,iso3 ,hs6iso3 ,sumv )
save E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\价格计算\2006待合并.dta

*2007年数据
use E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\年份加总\2007数据加总前.dta,clear
collapse (sum) v,by(hs6)    // 计算2007年产品分类加总
rename v sumv
save E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\价格计算\2007产品加总.dta
use E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\年份加总\2007数据加总前.dta,clear
merge m:1 hs6 using E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\价格计算\2007产品加总.dta
drop _merge
drop if missing(t, hs6, hs1996, i ,j ,v ,q ,iso3 ,hs6iso3 ,sumv )
save E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\价格计算\2007待合并.dta


*2008年数据
use E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\年份加总\2008数据加总前.dta,clear
collapse (sum) v,by(hs6)    // 计算2008年产品分类加总
rename v sumv
save E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\价格计算\2008产品加总.dta
use E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\年份加总\2008数据加总前.dta,clear
merge m:1 hs6 using E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\价格计算\2008产品加总.dta
drop _merge
drop if missing(t, hs6, hs1996, i ,j ,v ,q ,iso3 ,hs6iso3 ,sumv )
save E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\价格计算\2008待合并.dta


*2009年数据
use E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\年份加总\2009数据加总前.dta,clear
collapse (sum) v,by(hs6)    // 计算2009年产品分类加总
rename v sumv
save E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\价格计算\2009产品加总.dta
use E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\年份加总\2009数据加总前.dta,clear
merge m:1 hs6 using E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\价格计算\2009产品加总.dta
drop _merge
drop if missing(t, hs6, hs1996, i ,j ,v ,q ,iso3 ,hs6iso3 ,sumv )
save E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\价格计算\2009待合并.dta




*2010年数据
use E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\年份加总\2010数据加总前.dta,clear
collapse (sum) v,by(hs6)    // 计算2010年产品分类加总
rename v sumv
save E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\价格计算\2010产品加总.dta
use E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\年份加总\2010数据加总前.dta,clear
merge m:1 hs6 using E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\价格计算\2010产品加总.dta
drop _merge
drop if missing(t, hs6, hs1996, i ,j ,v ,q ,iso3 ,hs6iso3 ,sumv )
save E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\价格计算\2010待合并.dta

*2011年数据
use E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\年份加总\2011数据加总前.dta,clear
collapse (sum) v,by(hs6)    // 计算2011年产品分类加总
rename v sumv
save E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\价格计算\2011产品加总.dta
use E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\年份加总\2011数据加总前.dta,clear
merge m:1 hs6 using E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\价格计算\2011产品加总.dta
drop _merge
drop if missing(t, hs6, hs1996, i ,j ,v ,q ,iso3 ,hs6iso3 ,sumv )
save E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\价格计算\2011待合并.dta



*处理份额和出口单价
*处理1998年
use E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\价格计算\1998待合并.dta ,clear
collapse (sum) v q,by(iso3 hs6)  //*合并价值和数量 
rename v allv
rename q allq
save E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\价格计算\1998总量总价.dta,replace
merge m:1 hs6 using E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\价格计算\1998产品加总.dta
drop _merge
*处理份额
gen share=allv/sumv
*处理单价
gen unitp=allv/allq
*处理份额*单价
gen sp=share*unitp
collapse (sum) sp ,by(hs6)  //*加总份额乘单价 
save E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\价格计算\1998sharep.dta,replace
use E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\价格计算\1998总量总价.dta ,clear
encode iso3,gen (iso31)
keep if iso31==39              //保留中国产品
gen unitp=allv/allq
merge m:1 hs6 using E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\价格计算\1998sharep.dta
gen qk=unitp/sp                  //计算产品质量水平
drop _merge
gen t=1998
save  E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\价格计算\1998各产品质量水平.dta,replace

*处理1999年
use E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\价格计算\1999待合并.dta ,clear
collapse (sum) v q,by(iso3 hs6)  //*合并价值和数量 
rename v allv
rename q allq
save E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\价格计算\1999总量总价.dta,replace
merge m:1 hs6 using E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\价格计算\1999产品加总.dta
drop _merge
*处理份额
gen share=allv/sumv
*处理单价
gen unitp=allv/allq
*处理份额*单价
gen sp=share*unitp
collapse (sum) sp ,by(hs6)  //*加总份额乘单价 
save E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\价格计算\1999sharep.dta,replace
use E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\价格计算\1999总量总价.dta ,clear
encode iso3,gen (iso31)
keep if iso31==39              //保留中国产品
gen unitp=allv/allq
merge m:1 hs6 using E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\价格计算\1999sharep.dta
gen qk=unitp/sp                  //计算产品质量水平
drop _merge
gen t=1999
save  E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\价格计算\2000各产品质量水平.dta,replace

*处理2000年
use E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\价格计算\2000待合并.dta ,clear
collapse (sum) v q,by(iso3 hs6)  //*合并价值和数量 
rename v allv
rename q allq
save E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\价格计算\2000总量总价.dta,replace
merge m:1 hs6 using E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\价格计算\2000产品加总.dta
drop _merge
*处理份额
gen share=allv/sumv
*处理单价
gen unitp=allv/allq
*处理份额*单价
gen sp=share*unitp
collapse (sum) sp ,by(hs6)  //*加总份额乘单价 
save E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\价格计算\2000sharep.dta,replace
use E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\价格计算\2000总量总价.dta ,clear
encode iso3,gen (iso31)
keep if iso31==39              //保留中国产品
gen unitp=allv/allq
merge m:1 hs6 using E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\价格计算\2000sharep.dta
gen qk=unitp/sp                  //计算产品质量水平
drop _merge
gen t=2000
save  E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\价格计算\2000各产品质量水平.dta,replace


*处理2001年
use E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\价格计算\2001待合并.dta ,clear
collapse (sum) v q,by(iso3 hs6)  //*合并价值和数量 
rename v allv
rename q allq
save E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\价格计算\2001总量总价.dta,replace
merge m:1 hs6 using E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\价格计算\2001产品加总.dta
drop _merge
*处理份额
gen share=allv/sumv
*处理单价
gen unitp=allv/allq
*处理份额*单价
gen sp=share*unitp
collapse (sum) sp ,by(hs6)  //*加总份额乘单价 
save E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\价格计算\2001sharep.dta,replace
use E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\价格计算\2001总量总价.dta ,clear
encode iso3,gen (iso31)
keep if iso31==39              //保留中国产品
gen unitp=allv/allq
merge m:1 hs6 using E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\价格计算\2001sharep.dta
gen qk=unitp/sp                  //计算产品质量水平
drop _merge
gen t=2001
save  E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\价格计算\2001各产品质量水平.dta,replace

*处理2002年
use E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\价格计算\2002待合并.dta ,clear
collapse (sum) v q,by(iso3 hs6)  //*合并价值和数量 
rename v allv
rename q allq
save E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\价格计算\2002总量总价.dta,replace
merge m:1 hs6 using E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\价格计算\2002产品加总.dta
drop _merge
*处理份额
gen share=allv/sumv
*处理单价
gen unitp=allv/allq
*处理份额*单价
gen sp=share*unitp
collapse (sum) sp ,by(hs6)  //*加总份额乘单价 
save E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\价格计算\2002sharep.dta,replace
use E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\价格计算\2002总量总价.dta ,clear
encode iso3,gen (iso31)
keep if iso31==39              //保留中国产品
gen unitp=allv/allq
merge m:1 hs6 using E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\价格计算\2002sharep.dta
gen qk=unitp/sp                  //计算产品质量水平
drop _merge
gen t=2002
save  E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\价格计算\2002各产品质量水平.dta,replace


*处理2003年
use E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\价格计算\2003待合并.dta ,clear
collapse (sum) v q,by(iso3 hs6)  //*合并价值和数量 
rename v allv
rename q allq
save E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\价格计算\2003总量总价.dta,replace
merge m:1 hs6 using E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\价格计算\2003产品加总.dta
drop _merge
*处理份额
gen share=allv/sumv
*处理单价
gen unitp=allv/allq
*处理份额*单价
gen sp=share*unitp
collapse (sum) sp ,by(hs6)  //*加总份额乘单价 
save E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\价格计算\2003sharep.dta,replace
use E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\价格计算\2003总量总价.dta ,clear
encode iso3,gen (iso31)
keep if iso31==39              //保留中国产品
gen unitp=allv/allq
merge m:1 hs6 using E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\价格计算\2003sharep.dta
gen qk=unitp/sp                  //计算产品质量水平
drop _merge
gen t=2003
save  E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\价格计算\2003各产品质量水平.dta,replace

*处理2004年
use E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\价格计算\2004待合并.dta ,clear
collapse (sum) v q,by(iso3 hs6)  //*合并价值和数量 
rename v allv
rename q allq
save E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\价格计算\2004总量总价.dta,replace
merge m:1 hs6 using E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\价格计算\2004产品加总.dta
drop _merge
*处理份额
gen share=allv/sumv
*处理单价
gen unitp=allv/allq
*处理份额*单价
gen sp=share*unitp
collapse (sum) sp ,by(hs6)  //*加总份额乘单价 
save E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\价格计算\2004sharep.dta,replace
use E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\价格计算\2004总量总价.dta ,clear
encode iso3,gen (iso31)
keep if iso31==39              //保留中国产品
gen unitp=allv/allq
merge m:1 hs6 using E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\价格计算\2004sharep.dta
gen qk=unitp/sp                  //计算产品质量水平
drop _merge
gen t=2004
save  E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\价格计算\2004各产品质量水平.dta,replace

*处理2005年
use E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\价格计算\2005待合并.dta ,clear
collapse (sum) v q,by(iso3 hs6)  //*合并价值和数量 
rename v allv
rename q allq
save E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\价格计算\2005总量总价.dta,replace
merge m:1 hs6 using E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\价格计算\2005产品加总.dta
drop _merge
*处理份额
gen share=allv/sumv
*处理单价
gen unitp=allv/allq
*处理份额*单价
gen sp=share*unitp
collapse (sum) sp ,by(hs6)  //*加总份额乘单价 
save E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\价格计算\2005sharep.dta,replace
use E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\价格计算\2005总量总价.dta ,clear
encode iso3,gen (iso31)
keep if iso31==39              //保留中国产品
gen unitp=allv/allq
merge m:1 hs6 using E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\价格计算\2005sharep.dta
gen qk=unitp/sp                  //计算产品质量水平
drop _merge
gen t=2005
save  E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\价格计算\2005各产品质量水平.dta,replace

*处理2006年
use E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\价格计算\2006待合并.dta ,clear
collapse (sum) v q,by(iso3 hs6)  //*合并价值和数量 
rename v allv
rename q allq
save E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\价格计算\2006总量总价.dta,replace
merge m:1 hs6 using E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\价格计算\2006产品加总.dta
drop _merge
*处理份额
gen share=allv/sumv
*处理单价
gen unitp=allv/allq
*处理份额*单价
gen sp=share*unitp
collapse (sum) sp ,by(hs6)  //*加总份额乘单价 
save E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\价格计算\2006sharep.dta,replace
use E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\价格计算\2006总量总价.dta ,clear
encode iso3,gen (iso31)
keep if iso31==39              //保留中国产品
gen unitp=allv/allq
merge m:1 hs6 using E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\价格计算\2006sharep.dta
gen qk=unitp/sp                  //计算产品质量水平
drop _merge
gen t=2006
save  E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\价格计算\2006各产品质量水平.dta,replace


*处理2007年
use E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\价格计算\2007待合并.dta ,clear
collapse (sum) v q,by(iso3 hs6)  //*合并价值和数量 
rename v allv
rename q allq
save E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\价格计算\2007总量总价.dta,replace
merge m:1 hs6 using E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\价格计算\2007产品加总.dta
drop _merge
*处理份额
gen share=allv/sumv
*处理单价
gen unitp=allv/allq
*处理份额*单价
gen sp=share*unitp
collapse (sum) sp ,by(hs6)  //*加总份额乘单价 
save E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\价格计算\2007sharep.dta,replace
use E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\价格计算\2007总量总价.dta ,clear
encode iso3,gen (iso31)
keep if iso31==39              //保留中国产品
gen unitp=allv/allq
merge m:1 hs6 using E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\价格计算\2007sharep.dta
gen qk=unitp/sp                  //计算产品质量水平
drop _merge
gen t=2007
save  E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\价格计算\2007各产品质量水平.dta,replace


*处理2008年
use E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\价格计算\2008待合并.dta ,clear
collapse (sum) v q,by(iso3 hs6)  //*合并价值和数量 
rename v allv
rename q allq
save E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\价格计算\2008总量总价.dta,replace
merge m:1 hs6 using E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\价格计算\2008产品加总.dta
drop _merge
*处理份额
gen share=allv/sumv
*处理单价
gen unitp=allv/allq
*处理份额*单价
gen sp=share*unitp
collapse (sum) sp ,by(hs6)  //*加总份额乘单价 
save E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\价格计算\2008sharep.dta,replace
use E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\价格计算\2008总量总价.dta ,clear
encode iso3,gen (iso31)
keep if iso31==39              //保留中国产品
gen unitp=allv/allq
merge m:1 hs6 using E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\价格计算\2008sharep.dta
gen qk=unitp/sp                  //计算产品质量水平
drop _merge
gen t=2008
save  E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\价格计算\2008各产品质量水平.dta,replace


*处理2009年
use E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\价格计算\2009待合并.dta ,clear
collapse (sum) v q,by(iso3 hs6)  //*合并价值和数量 
rename v allv
rename q allq
save E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\价格计算\2009总量总价.dta,replace
merge m:1 hs6 using E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\价格计算\2009产品加总.dta
drop _merge
*处理份额
gen share=allv/sumv
*处理单价
gen unitp=allv/allq
*处理份额*单价
gen sp=share*unitp
collapse (sum) sp ,by(hs6)  //*加总份额乘单价 
save E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\价格计算\2009sharep.dta,replace
use E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\价格计算\2009总量总价.dta ,clear
encode iso3,gen (iso31)
keep if iso31==39              //保留中国产品
gen unitp=allv/allq
merge m:1 hs6 using E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\价格计算\2009sharep.dta
gen qk=unitp/sp                  //计算产品质量水平
drop _merge
gen t=2009
save  E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\价格计算\2009各产品质量水平.dta,replace

*处理2010年
use E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\价格计算\2010待合并.dta ,clear
collapse (sum) v q,by(iso3 hs6)  //*合并价值和数量 
rename v allv
rename q allq
save E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\价格计算\2010总量总价.dta,replace
merge m:1 hs6 using E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\价格计算\2010产品加总.dta
drop _merge
*处理份额
gen share=allv/sumv
*处理单价
gen unitp=allv/allq
*处理份额*单价
gen sp=share*unitp
collapse (sum) sp ,by(hs6)  //*加总份额乘单价 
save E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\价格计算\2010sharep.dta,replace
use E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\价格计算\2010总量总价.dta ,clear
encode iso3,gen (iso31)
keep if iso31==39              //保留中国产品
gen unitp=allv/allq
merge m:1 hs6 using E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\价格计算\2010sharep.dta
gen qk=unitp/sp                  //计算产品质量水平
drop _merge
gen t=2010
save  E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\价格计算\2010各产品质量水平.dta,replace

*处理2011年
use E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\价格计算\2011待合并.dta ,clear
collapse (sum) v q,by(iso3 hs6)  //*合并价值和数量 
rename v allv
rename q allq
save E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\价格计算\2011总量总价.dta,replace
merge m:1 hs6 using E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\价格计算\2011产品加总.dta
drop _merge
*处理份额
gen share=allv/sumv
*处理单价
gen unitp=allv/allq
*处理份额*单价
gen sp=share*unitp
collapse (sum) sp ,by(hs6)  //*加总份额乘单价 
save E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\价格计算\2011sharep.dta,replace
use E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\价格计算\2011总量总价.dta ,clear
encode iso3,gen (iso31)
keep if iso31==39              //保留中国产品
gen unitp=allv/allq
merge m:1 hs6 using E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\价格计算\2011sharep.dta
gen qk=unitp/sp                  //计算产品质量水平
drop _merge
gen t=2011
save  E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\价格计算\2011各产品质量水平.dta,replace


*合并1998-2011 数据
 use E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\价格计算\1998各产品质量水平.dta,clear
 append using E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\价格计算\1999各产品质量水平.dta
append using E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\价格计算\2001各产品质量水平.dta
append using E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\价格计算\2002各产品质量水平.dta
append using E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\价格计算\2003各产品质量水平.dta
append using E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\价格计算\2004各产品质量水平.dta
append using E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\价格计算\2005各产品质量水平.dta
append using E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\价格计算\2006各产品质量水平.dta
append using E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\价格计算\2007各产品质量水平.dta
append using E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\价格计算\2008各产品质量水平.dta
append using E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\价格计算\2009各产品质量水平.dta
append using E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\价格计算\2010各产品质量水平.dta
append using E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\价格计算\2011各产品质量水平.dta
drop if missing(hs6 ,iso3 ,allv ,allq ,iso31 ,unitp ,sp ,qk ,t)
drop allv allq unitp sp
save E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\价格计算\1999-2011产品质量水平.dta
















