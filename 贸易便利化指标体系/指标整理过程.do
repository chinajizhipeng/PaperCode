*扩充数据
*扩充为每个国家2005-2018年的面板数据
reshape wide v,i(stiso3) j(year)
reshape long v,i(stiso3) j(year) //扩充为2005-2018年数据
save E:\论文学习\论文\贸易便利化\dta\扩充数据2005-2018.dta,replace

use E:\论文学习\论文\贸易便利化\dta\扩充数据2005-2018.dta,clear
rename stiso3 iso3
drop v
merge n:n iso3 using E:\论文学习\论文\贸易便利化\dta\扩充数据.dta
use E:\论文学习\论文\贸易便利化\dta\扩充数据.dta,clear
encode  iso3,gen(stiso3)
drop _merge
order country year iso3 stiso3
save E:\论文学习\论文\贸易便利化\dta\扩充数据完.dta,replace
*处理C数据
use E:\论文学习\论文\贸易便利化\dta\扩充数据完.dta,clear
merge 1:1 iso3 year using E:\论文学习\论文\贸易便利化\dta\DB.dta
drop _merge
destring c1new c2new c3new c4new,replace force
save E:\论文学习\论文\贸易便利化\dta\扩充数据完c.dta,replace
*处理A数据
use E:\论文学习\论文\贸易便利化\dta\A.dta,clear
destring a12016,replace force
reshape long a1 a2,i(iso3)j(year)
save E:\论文学习\论文\贸易便利化\dta\A处理完.dta,replace
use E:\论文学习\论文\贸易便利化\dta\扩充数据完c.dta,clear
merge 1:1 iso3 year using E:\论文学习\论文\贸易便利化\dta\A处理完.dta //not matched   1,851
                                                                      //from master   1,851 
save E:\论文学习\论文\贸易便利化\dta\扩充数据完ac.dta,replace
*处理NRI数据
use E:\论文学习\论文\贸易便利化\dta\NRI.dta,clear
reshape long g1 g2 g3 ,i(iso3)j(year)
save E:\论文学习\论文\贸易便利化\dta\NRI处理好.dta,replace
use E:\论文学习\论文\贸易便利化\dta\扩充数据完ac.dta,clear
drop _merge
merge 1:1 iso3 year using E:\论文学习\论文\贸易便利化\dta\NRI处理好.dta    //  not matched    2,768
                                                                           //  from master    2,768
drop _merge
save E:\论文学习\论文\贸易便利化\dta\扩充数据完acg.dta,replace
*处理GCR
use  E:\论文学习\论文\贸易便利化\dta\gcr.dta,clear
reshape long e1 e2 e4 f1 f2 h1 h2 i1 i2 ,i(iso3)j(year)
save E:\论文学习\论文\贸易便利化\dta\gcr处理完.dta,replace
use E:\论文学习\论文\贸易便利化\dta\扩充数据完acg.dta,clear
merge 1:1 iso3 year using E:\论文学习\论文\贸易便利化\dta\gcr处理完.dta   // not matched    1,851
                                                                          // from master    1,851 
drop _merge
save E:\论文学习\论文\贸易便利化\dta\扩充数据完acefghi.dta,replace
*处理GETR
*2008
use E:\论文学习\论文\贸易便利化\dta\gert2008.dta,clear
replace country =subinstr( country ," ","",.)  //删除字符串中的空格
merge 1:1 country using E:\论文学习\论文\贸易便利化\dta\iso3匹配.dta
drop if _merge == 2
drop _merge
save E:\论文学习\论文\贸易便利化\dta\gert2008处理完.dta,replace
*2009
use E:\论文学习\论文\贸易便利化\dta\gert2009.dta,clear
replace country =subinstr( country ," ","",.)  //删除字符串中的空格
merge 1:1 country using E:\论文学习\论文\贸易便利化\dta\iso3匹配.dta
drop if _merge == 2
drop _merge
save E:\论文学习\论文\贸易便利化\dta\gert2009.dta,replace
*2010
use E:\论文学习\论文\贸易便利化\dta\gert2010.dta,clear
replace country =subinstr( country ," ","",.)  //删除字符串中的空格
merge 1:1 country using E:\论文学习\论文\贸易便利化\dta\iso.dta
drop if _merge == 2
drop _merge
save E:\论文学习\论文\贸易便利化\dta\gert2010处理好.dta,replace
*2012
use E:\论文学习\论文\贸易便利化\dta\gert2012.dta,clear
replace country =subinstr( country ," ","",.)  //删除字符串中的空格
merge 1:1 country using E:\论文学习\论文\贸易便利化\dta\iso.dta
drop if _merge == 2
drop _merge
save E:\论文学习\论文\贸易便利化\dta\gert2012处理好.dta,replace
*2014
use E:\论文学习\论文\贸易便利化\dta\gert2014.dta,clear
replace country =subinstr( country ," ","",.)  //删除字符串中的空格
merge 1:1 country using E:\论文学习\论文\贸易便利化\dta\iso.dta
drop if _merge == 2
drop _merge
save E:\论文学习\论文\贸易便利化\dta\gert2014处理好.dta,replace
*2016
use E:\论文学习\论文\贸易便利化\dta\gert2016.dta,clear
replace country =subinstr( country ," ","",.)  //删除字符串中的空格
merge 1:1 country using E:\论文学习\论文\贸易便利化\dta\iso.dta
drop if _merge == 2
drop _merge
save E:\论文学习\论文\贸易便利化\dta\gert2016处理好.dta,replace


汇总
*2008
use E:\论文学习\论文\贸易便利化\dta\gert2008处理完.dta,clear
rename b1 b12008
rename b2 b22008
rename b3 b42008
rename d3 d32008
drop country
duplicates  drop iso3,force
save E:\论文学习\论文\贸易便利化\dta\gert2008待合并.dta,replace
*2009
use E:\论文学习\论文\贸易便利化\dta\gert2009.dta,clear
drop country
save E:\论文学习\论文\贸易便利化\dta\gert2009待合并.dta,replace
*2010
use E:\论文学习\论文\贸易便利化\dta\gert2010处理好.dta,clear
drop country
save E:\论文学习\论文\贸易便利化\dta\gert2010待合并.dta,replace
*2012
use E:\论文学习\论文\贸易便利化\dta\gert2012处理好.dta,clear
drop country
save E:\论文学习\论文\贸易便利化\dta\gert2012待合并.dta,replace
*2014
use E:\论文学习\论文\贸易便利化\dta\gert2014处理好.dta,clear
drop country
save E:\论文学习\论文\贸易便利化\dta\gert2014待合并.dta,replace
*2016
use E:\论文学习\论文\贸易便利化\dta\gert2016处理好.dta,clear
drop country
save E:\论文学习\论文\贸易便利化\dta\gert2016待合并.dta,replace

use E:\论文学习\论文\贸易便利化\dta\iso3匹配.dta,clear
drop country
duplicates drop
merge 1:1 iso3 using E:\论文学习\论文\贸易便利化\dta\gert2008待合并.dta
drop _merge
merge 1:1 iso3 using E:\论文学习\论文\贸易便利化\dta\gert2009待合并.dta
drop _merge
merge 1:1 iso3 using E:\论文学习\论文\贸易便利化\dta\gert2010待合并.dta
drop _merge
merge 1:1 iso3 using E:\论文学习\论文\贸易便利化\dta\gert2012待合并.dta
drop _merge
merge 1:1 iso3 using E:\论文学习\论文\贸易便利化\dta\gert2014待合并.dta
drop _merge
merge 1:1 iso3 using E:\论文学习\论文\贸易便利化\dta\gert2016待合并.dta
drop _merge
rename b42008 b32008
reshape long b1 b2 b3 d3 ,i(iso3)j(year)
 
drop if  iso3 == ""
save E:\论文学习\论文\贸易便利化\dta\gert.dta,replace

use E:\论文学习\论文\贸易便利化\dta\扩充数据完acefghi.dta,clear
merge 1:1 iso3 year using E:\论文学习\论文\贸易便利化\dta\gert.dta
drop _merge
save E:\论文学习\论文\贸易便利化\dta\扩充数据完abcefghi.dta,replace  

*d1&d2
use  E:\论文学习\论文\贸易便利化\dta\D12.dta,clear
destring d12016 d22016 d12014 d22014,replace force
reshape long d1 d2 ,i(iso3)j(year)
save E:\论文学习\论文\贸易便利化\dta\D12处理后.dta,replace

use E:\论文学习\论文\贸易便利化\dta\扩充数据完abcefghi.dta,clear
merge 1:1 iso3 year using E:\论文学习\论文\贸易便利化\dta\D12处理后.dta
drop _merge
encode iso3,gen(iso)
drop stiso3
order country year iso3 iso
xtset iso year
save E:\论文学习\论文\贸易便利化\dta\扩充数据完abcdefghi.dta,replace  //差法律，待完善 

*e3
use E:\论文学习\论文\贸易便利化\dta\WGI.dta,clear
reshape long e3 ,i(iso3)j(year)
save E:\论文学习\论文\贸易便利化\dta\WGI处理后.dta,replace

use E:\论文学习\论文\贸易便利化\dta\扩充数据完abcdefghi.dta,clear
merge 1:1 iso3 year using E:\论文学习\论文\贸易便利化\dta\WGI处理后.dta
drop if _merge == 2

drop  _merge 

order country year iso3 iso a1 a2 b1 b2 b3 c1old c1new c2old c2new c3old  c3new c4old c4new d1 d2 d3 e1 e2 e3 e4 f1 f2 g1 g2 g3 h1 h2 i1 i2
save E:\论文学习\论文\贸易便利化\dta\全球完整子指标.dta,replace  

*匹配收入国家
use E:\论文学习\论文\贸易便利化\dta\全球完整子指标.dta,clear
merge n:1 iso3 using E:\论文学习\论文\贸易便利化\dta\国家收入分组.dta
drop if _merge != 3 //删除没有匹配成功的国家
drop _merge 
order country year iso3 iso incomegroup  //删除没有匹配成功的国家
save E:\论文学习\论文\贸易便利化\dta\全球完整子指标1.dta,replace  

*计算缺失年份
global vars "a1 a2 b1 b2 b3 c1old c1new c2old c2new c3old c3new c4old c4new d1 d2 d3 e1 e2 e3 e4 f1 f2 g1 g2 g3 h1 h2 i1 i2"
foreach v of varlist $vars{
use E:\论文学习\论文\贸易便利化\dta\全球完整子指标1.dta,clear
drop if `v' == .
collapse (count) `v' ,by(iso3)
save E:\论文学习\论文\贸易便利化\数据整理\缺失情况\年份的缺失\a`v'.dta,replace
}
*汇总
use E:\论文学习\论文\贸易便利化\dta\全球完整子指标1.dta,clear
keep iso3
duplicates drop  iso3  ,force
foreach file in a1 a2 b1 b2 b3 c1old c1new c2old c2new c3old c3new c4old c4new d1 d2 d3 e1 e2 e3 e4 f1 f2 g1 g2 g3 h1 h2 i1 i2{
merge 1:1 iso3 using E:\论文学习\论文\贸易便利化\数据整理\缺失情况\年份的缺失\a`file'.dta
drop _merge
}
drop if missing(a1,a2,b1,b2,b3,c1old,c1new,c2old,c2new,c3old,c3new,c4old,c4new,d1,d2,d3,e1,e2,e3,e4,f1,f2,g1,g2,g3,h1,h2,i1,i2)
save E:\论文学习\论文\贸易便利化\dta\贸易便利化删除缺失严重的国家.dta
outsheet using 贸易便利化删除缺失严重的国家.xls 
*筛选国家
use E:\论文学习\论文\贸易便利化\dta\贸易便利化删除缺失严重的国家.dta,clear
keep   iso3 
gen a = 1
save E:\论文学习\论文\贸易便利化\dta\筛选国家.dta,replace
use E:\论文学习\论文\贸易便利化\dta\全球完整子指标1.dta,clear
merge n:1 iso3 using E:\论文学习\论文\贸易便利化\dta\筛选国家.dta
keep if _merge == 3
drop _merge
drop a
*outsheet using 贸易便利化112国家.xls 

*修改d1
*2009年
drop d1 
rename d2 d1
rename d1 d12009
merge 1:1 country using E:\论文学习\论文\贸易便利化\dta\iso.dta
drop if _merge == 2
drop _merge
drop country
save E:\论文学习\论文\贸易便利化\全球贸易便利化报告\20091个指标.dta,replace
*2010年
use E:\论文学习\论文\贸易便利化\全球贸易便利化报告\2010.dta
drop brank bscore b1rank b1score b2rank b2score b3rank
rename b3score d12010
merge 1:1 country using E:\论文学习\论文\贸易便利化\dta\iso.dta
drop if _merge == 2
drop _merge
drop country
save E:\论文学习\论文\贸易便利化\全球贸易便利化报告\20101个指标.dta,replace
use E:\论文学习\论文\贸易便利化\全球贸易便利化报告\20101个指标.dta,clear
duplicates e iso3

*2012
use E:\论文学习\论文\贸易便利化\全球贸易便利化报告\2012.dta
drop brank bscore b1rank b1score b2rank b2score b3rank
rename b3score d12012
merge 1:1 country using E:\论文学习\论文\贸易便利化\dta\iso.dta
drop if _merge == 2
drop _merge
drop country
save E:\论文学习\论文\贸易便利化\全球贸易便利化报告\20121个指标.dta,replace
*合并2009-2012年
keep iso3
duplicates  drop iso3,force
save E:\论文学习\论文\贸易便利化\112个国家.dta,replace
use E:\论文学习\论文\贸易便利化\112个国家.dta,clear
merge 1:1 iso3 using E:\论文学习\论文\贸易便利化\全球贸易便利化报告\20091个指标.dta
drop _merge
merge 1:1 iso3 using E:\论文学习\论文\贸易便利化\全球贸易便利化报告\20101个指标.dta
drop _merge
merge 1:1 iso3 using E:\论文学习\论文\贸易便利化\全球贸易便利化报告\20121个指标.dta
drop if _merge != 3
drop _merge
rename d22009 d12009
reshape long d1,i(iso3) j(year)
save E:\论文学习\论文\贸易便利化\全球贸易便利化报告\边境的透明度.dta,replace
*扩充
*处理变量
use E:\论文学习\论文\贸易便利化\dta\全球完整子指标1.dta,clear
merge n:1 iso3 using E:\论文学习\论文\贸易便利化\dta\筛选国家.dta
keep if _merge == 3
drop _merge
drop a
drop c1new c2new c3new c4new //去掉C1-C4的新方法
drop d2 //去掉d2海关透明度指数
rename d1 d1new //修改d1
rename d3 d2
merge 1:1 iso3 year using E:\论文学习\论文\贸易便利化\全球贸易便利化报告\边境的透明度.dta
replace d1 = d1new if d1 == .
drop d1new
rename c1old c1
rename c2old c2
rename c3old c3
rename c4old c4
order country iso3 incomegroup iso year a1 a2 b1 b2 b3 c1 c2 c3 c4 d1 d2  e1 e2 e3 e4 f1 f2 g1 g2 g3 h1 h2 i1 i2
drop if _merge == 2
drop  _merge
drop if year < 2008 
drop if year > 2016
save E:\论文学习\论文\贸易便利化\dta\贸易便利化指标待扩充G1G2.dta,replace
use E:\论文学习\论文\贸易便利化\dta\贸易便利化指标待扩充G1G2.dta,clear

*计算年份长度
set more off
global vars "a1 a2 b1 b2 b3 c1 c2 c3 c4 d1 d2  e1 e2 e3 e4 f1 f2 g1 g2 g3 h1 h2 i1 i2"
foreach v of varlist $vars{
use E:\论文学习\论文\贸易便利化\dta\贸易便利化指标待扩充G1G2.dta,clear
drop if `v' == .
collapse (count) `v' ,by(iso3)
save E:\论文学习\论文\贸易便利化\数据整理\缺失情况\年份的缺失\新`v'.dta,replace
}
*汇总
use E:\论文学习\论文\贸易便利化\dta\贸易便利化指标待扩充G1G2.dta,clear
keep iso3
duplicates drop  iso3  ,force
foreach file in a1 a2 b1 b2 b3 c1 c2 c3 c4 d1 d2  e1 e2 e3 e4 f1 f2 g1 g2 g3 h1 h2 i1 i2{
merge 1:1 iso3 using E:\论文学习\论文\贸易便利化\数据整理\缺失情况\年份的缺失\新`file'.dta
drop _merge
}
save E:\论文学习\论文\贸易便利化\数据整理\缺失情况G1G2.dta,replace
outsheet using 年份长度g1g2.xls 

*筛选国家 年份长度小于5年
use E:\论文学习\论文\贸易便利化\数据整理\缺失情况G1G2.dta,clear
global vars "a1 a2 b1 b2 b3 c1 c2 c3 c4 d1 d2  e1 e2 e3 e4 f1 f2 h1 h2 i1 i2"
foreach v of varlist $vars{
drop if `v' < 5
} //删除了12个国家

gen a = 1
keep iso3 a
save E:\论文学习\论文\贸易便利化\dta\98个国家.dta,replace
*查看删除的国家
use E:\论文学习\论文\贸易便利化\数据整理\缺失情况G1G2.dta,clear
keep iso3
merge 1:1 iso3 using  E:\论文学习\论文\贸易便利化\dta\98个国家.dta
*保留国家的贸易便利化指标
use E:\论文学习\论文\贸易便利化\dta\贸易便利化指标待扩充G1G2.dta,clear
merge n:1 iso3 using  E:\论文学习\论文\贸易便利化\dta\98个国家.dta
drop if _merge != 3
drop a _merge 
drop g2
rename g3 g2
rename g1 g3
merge 1:1 iso3 year using E:\论文学习\论文\贸易便利化\全球贸易便利化报告\2010g1.dta
drop if _merge == 2
drop _merge
replace g3 = g1 if g3 == .
drop g1 
rename g3 g1
save E:\论文学习\论文\贸易便利化\dta\贸易便利化指标待补漏.dta,replace

*补充缺失值
*中间缺失取均值
use E:\论文学习\论文\贸易便利化\dta\贸易便利化指标待补漏.dta,clear
xtset iso year
set more off
global vars "a1 a2 b1 b2 b3 c1 c2 c3 c4 d1 d2  e1 e2 e3 e4 f1 f2 g1 g2 h1 h2 i1 i2"
foreach v of varlist $vars{
replace `v' = (`v'[_n-1]+`v'[_n+1])/2 if `v' == . 
} 
save E:\论文学习\论文\贸易便利化\dta\贸易便利化指标待补漏fgh.dta,replace

*前后缺失使用年均增长值补充（只有f2 g1 g2 h1 h2）
*计算平均年增长值
global vars "a1 a2 b1 b2 b3 c1 c2 c3 c4 d1 d2  e1 e2 e3 e4 f1 f2 g1 g2 h1 h2 i1 i2"
set more off 
foreach v of varlist $vars{
use E:\论文学习\论文\贸易便利化\dta\贸易便利化指标待补漏fgh.dta,clear
xtset iso year
keep iso3 iso year `v'
gen r`v' = D.`v' / L.`v'
drop if r`v' == .
bysort iso : egen rr`v' =mean(r`v')
keep iso3 rr`v'
duplicates drop iso3 ,force
save E:\论文学习\论文\贸易便利化\缺漏值补充\a`v'.dta,replace
}

use E:\论文学习\论文\贸易便利化\dta\贸易便利化指标待补漏fgh.dta,clear
keep iso3 iso year a1 a2 b1 b2 b3 c1 c2 c3 c4 d1 d2  e1 e2 e3 e4 f1 f2 g1 g2 h1 h2 i1 i2
global vars "a1 a2 b1 b2 b3 c1 c2 c3 c4 d1 d2  e1 e2 e3 e4 f1 f2 g1 g2 h1 h2 i1 i2"
foreach v of varlist $vars{
set more off 
merge n:1 iso3 using E:\论文学习\论文\贸易便利化\缺漏值补充\a`v'.dta
drop _merge
}
*补缺
global vars "a1 a2 b1 b2 b3 c1 c2 c3 c4 d1 d2  e1 e2 e3 e4 f1 f2 g1 g2 h1 h2 i1 i2"
set more off 
foreach v of varlist $vars{
replace `v' = (`v'[_n+1])/(1+rr`v') if `v'[_n] == . & `v'[_n+1] != .
} //重复数次
drop iso rra1-rri2
save E:\论文学习\论文\贸易便利化\缺漏值补充\补缺值.dta,replace

use E:\论文学习\论文\贸易便利化\dta\贸易便利化指标待补漏fgh.dta,clear
keep country iso3 incomegroup iso year 
merge 1:1 iso3 year using E:\论文学习\论文\贸易便利化\缺漏值补充\补缺值.dta
drop _merge
order country iso3 incomegroup iso year a1 a2 b1 b2 b3 c1 c2 c3 c4 d1 d2  e1 e2 e3 e4 f1 f2 g1 g2 h1 h2 i1 i2
save E:\论文学习\论文\贸易便利化\补缺后全球贸易便利化指标.dta,replace
outsheet using 补缺后全球贸易便利化指标.xls,replace
***********************************主成分分析***********************************
*1-7分处理
use E:\论文学习\论文\贸易便利化\补缺后全球贸易便利化指标.dta,clear
drop country incomegroup
global vars "c1 c2 c3 c4 "
set more off 
foreach v of varlist $vars{
egen min`v' = min(`v'),by(year)
egen max`v' = max(`v'),by(year)
gen a`v' = (-6)*(`v'-min`v')/(max`v'-min`v')+7
replace `v' =a`v'
}                                             //使用孔庆峰等（2015）对出口时间等指标转换为1-7得分的指标
egen mine3 = min(e3),by(year)
egen maxe3 = max(e3),by(year)
gen ae3 = 6*(e3-mine3)/(maxe3-mine3)+1           //6*(x-min(x))/(max(x)-min(x))+1转换为1-7得分的指标
replace e3 =ae3
drop minc1-ae3
save E:\论文学习\论文\贸易便利化\全球贸易便利化指标待标准化.dta,replace
*线性处理
use E:\论文学习\论文\贸易便利化\全球贸易便利化指标待标准化.dta,clear
global vars "a1 a2 b1 b2 b3 c1 c2 c3 c4 d1 d2  e1 e2 e3 e4 f1 f2 g1 g2 h1 h2 i1 i2"
set more off 
foreach v of varlist $vars{
egen max`v' = max(`v'),by(year)
gen A`v' = `v' /max`v'  // 线性处理后
replace `v' = A`v'
}
drop maxa1- Ai2
save E:\论文学习\论文\贸易便利化\全球贸易便利化指标标准化后.dta,replace
outsheet using 全球贸易便利化指标标准化后.xls,replace

*主成分分析
*2008
use E:\论文学习\论文\贸易便利化\全球贸易便利化指标标准化后.dta,clear
keep if year == 2008
xtset iso year
set more off 
pca a1 a2 b1 b2 b3 c1 c2 c3 c4 d1 d2 e1 e2 e3 e4 f1 f2 g1 g2 h1 h2 i1 i2 ,component(3)

*2009
use E:\论文学习\论文\贸易便利化\全球贸易便利化指标标准化后.dta,clear
keep if year == 2009
xtset iso year
set more off 
pca a1 a2 b1 b2 b3 c1 c2 c3 c4 d1 d2 e1 e2 e3 e4 f1 f2 g1 g2 h1 h2 i1 i2 ,component(3)

*2010
use E:\论文学习\论文\贸易便利化\全球贸易便利化指标标准化后.dta,clear
keep if year == 2010
xtset iso year
set more off 
pca a1 a2 b1 b2 b3 c1 c2 c3 c4 d1 d2 e1 e2 e3 e4 f1 f2 g1 g2 h1 h2 i1 i2 ,component(3)

*2011
use E:\论文学习\论文\贸易便利化\全球贸易便利化指标标准化后.dta,clear
keep if year == 2011
xtset iso year
set more off 
pca a1 a2 b1 b2 b3 c1 c2 c3 c4 d1 d2 e1 e2 e3 e4 f1 f2 g1 g2 h1 h2 i1 i2 ,component(3)

*2012
use E:\论文学习\论文\贸易便利化\全球贸易便利化指标标准化后.dta,clear
keep if year == 2012
xtset iso year
set more off 
pca a1 a2 b1 b2 b3 c1 c2 c3 c4 d1 d2 e1 e2 e3 e4 f1 f2 g1 g2 h1 h2 i1 i2 ,component(3)

*2013
use E:\论文学习\论文\贸易便利化\全球贸易便利化指标标准化后.dta,clear
keep if year == 2013
xtset iso year
set more off 
pca a1 a2 b1 b2 b3 c1 c2 c3 c4 d1 d2 e1 e2 e3 e4 f1 f2 g1 g2 h1 h2 i1 i2 ,component(3)

*2014
use E:\论文学习\论文\贸易便利化\全球贸易便利化指标标准化后.dta,clear
keep if year == 2014
xtset iso year
set more off 
pca a1 a2 b1 b2 b3 c1 c2 c3 c4 d1 d2 e1 e2 e3 e4 f1 f2 g1 g2 h1 h2 i1 i2 ,component(3)

*2015
use E:\论文学习\论文\贸易便利化\全球贸易便利化指标标准化后.dta,clear
keep if year == 2015
xtset iso year
set more off 
pca a1 a2 b1 b2 b3 c1 c2 c3 c4 d1 d2 e1 e2 e3 e4 f1 f2 g1 g2 h1 h2 i1 i2 ,component(3)

*2016
use E:\论文学习\论文\贸易便利化\全球贸易便利化指标标准化后.dta,clear
keep if year == 2016
xtset iso year
set more off 
pca a1 a2 b1 b2 b3 c1 c2 c3 c4 d1 d2 e1 e2 e3 e4 f1 f2 g1 g2 h1 h2 i1 i2 ,component(3)

**测算一级指标权重
use E:\论文学习\论文\贸易便利化\主成分分析\主成分系数.dta,clear
reshape long comp1 comp2 comp3 pro1 pro2 pro3 cum,i(var) j(year)
save E:\论文学习\论文\贸易便利化\主成分分析\主成分系数reshape.dta,replace

gen f =  (comp1*pro1+comp2*pro2+comp3*pro3)/cum  //求出贸易便利化指标体系的综合评价模型
keep var year f
sort  year var
*测算二级指标权重
*基础设施质量和运输服务	
use E:\论文学习\论文\贸易便利化\全球贸易便利化指标标准化后.dta,clear
keep iso3 year a1-b3
keep if year == 2016
pca a1 a2 b1 b2 b3
*进出口程序的效率和边境管理的透明度	
use E:\论文学习\论文\贸易便利化\全球贸易便利化指标标准化后.dta,clear
keep iso3 year c1-d2
keep if year == 2016
pca c1-d2
*政府的效率司法干预		
use E:\论文学习\论文\贸易便利化\全球贸易便利化指标标准化后.dta,clear
keep iso3 year e1-f2
keep if year == 2016
pca e1-f2
*电子商务的使用率、金融服务的效率、新技术的利用	
use E:\论文学习\论文\贸易便利化\全球贸易便利化指标标准化后.dta,clear
keep iso3 year g1-i2
keep if year == 2016
pca g1-i2
*计算三级指标权重
use E:\论文学习\论文\贸易便利化\主成分分析\3级指标.dta,clear
gen all =a1+a2+b1+b2+b3+c1+c2+c3+c4+d1+d2+e1+e2+e3+e4+f1+f2+g1+g2+h1+h2+i1+i2
global vars "a1 a2 b1 b2 b3 c1 c2 c3 c4 d1 d2  e1 e2 e3 e4 f1 f2 g1 g2 h1 h2 i1 i2"
set more off 
foreach v of varlist $vars{
gen q`v' = `v' / all
}
keep year q*
save E:\论文学习\论文\贸易便利化\主成分分析\三级权重.dta,replace
******************************
*计算二级得分
use E:\论文学习\论文\贸易便利化\全球贸易便利化指标标准化后.dta,clear
merge n:1 year using E:\论文学习\论文\贸易便利化\主成分分析\三级权重.dta
drop _merge
gen Q1 = a1*qa1 + a2*qa2
gen Q2 = b1*qb1 + b2*qb2 + b3*qb3
gen Q3 = c1*qc1 + c2*qc2 + c3*qc3 + c4*qc4
gen Q4 = d1*qd1 + d2*qd2
gen Q5 = e1*qe1 + e2*qe2 + e3*qe3 + e4*qe4
gen Q6 = f1*qf1 + f2*qf2
gen Q7 = g1*qg1 + g2*qg2
gen Q8 = h1*qh1 + h2*qh2
gen Q9 = i1*qi1 + i2*qi2
drop a1-qi2
save E:\论文学习\论文\贸易便利化\主成分分析\二级得分.dta,replace
use E:\论文学习\论文\贸易便利化\主成分分析\二级得分.dta,clear
outsheet using 二级得分.xls,replace
*一级得分
use E:\论文学习\论文\贸易便利化\主成分分析\二级得分.dta,clear
merge n:1 year using E:\论文学习\论文\贸易便利化\主成分分析\二级权重.dta
drop _merge
gen C1 = Q1*qq1 + Q2*qq2
gen C2 = Q3*qq3 + Q4*qq4
gen C3 = Q5*qq5 + Q6*qq6
gen C4 = Q7*qq7 + Q8*qq8 + Q9*qq9
drop Q1-qq9
save E:\论文学习\论文\贸易便利化\主成分分析\一级得分.dta,replace
use E:\论文学习\论文\贸易便利化\主成分分析\一级得分.dta,clear
outsheet using 一级得分.xls,replace

*总指标得分
use E:\论文学习\论文\贸易便利化\主成分分析\一级得分.dta,clear
merge n:1 year using E:\论文学习\论文\贸易便利化\主成分分析\一级权重.dta
drop _merge
gen TWTWI = C1*cc1+C2*cc2+C3*cc3+C4*cc4
drop C1-cc4
drop iso 
reshape wide TWTWI ,i(iso3)j(year)
gsort -TWTWI2016
gen p = _n
gsort -TWTWI2015
gen pp = _n
gsort -TWTWI2014
gen ppp = _n
gsort -TWTWI2013
gen pppp = _n
gsort -TWTWI2012
gen ppppp = _n
gsort -TWTWI2011
gen pppppp = _n
gsort -TWTWI2010
gen ppppppp = _n
gsort -TWTWI2009
gen pppppppp = _n
gsort -TWTWI2008
gen ppppppppp = _n
order iso3 p TWTWI2016  pp TWTWI2015 ppp TWTWI2014  pppp TWTWI2013 ppppp TWTWI2012 pppppp TWTWI2011 ppppppp TWTWI2010 pppppppp TWTWI2009 ppppppppp TWTWI2008 
gsort -TWTWI2016
save E:\论文学习\论文\贸易便利化\主成分分析\总得分.dta,replace
outsheet using 总得分.xls,replace

**************************修改版本
**测算一级指标权重
use E:\论文学习\论文\贸易便利化\主成分分析\主成分系数.dta,clear
reshape long comp1 comp2 comp3 pro1 pro2 pro3 cum,i(var) j(year)
save E:\论文学习\论文\贸易便利化\主成分分析\主成分系数reshape.dta,replace
gen f =  (comp1*pro1+comp2*pro2+comp3*pro3)/cum  //求出贸易便利化指标体系的综合评价模型
keep var year f
sort  year var
egen he = sum(f),by(year)
gen wight = f/he
drop he
reshape wide f wight,i(var) j(year)
save E:\论文学习\论文\贸易便利化\主成分分析\3级权重和系数.dta,replace
*三级指标权重和系数
use E:\论文学习\论文\贸易便利化\主成分分析\3级权重和系数.dta,clear
drop f*
save E:\论文学习\论文\贸易便利化\主成分分析\3级权重修改.dta,replace
outsheet using 贸易便利化三级指标权重.xls,replace

use E:\论文学习\论文\贸易便利化\主成分分析\3级权重和系数.dta,clear
drop w*
save E:\论文学习\论文\贸易便利化\主成分分析\3级系数修改.dta,replace
outsheet using 贸易便利化三级指标系数.xls,replace
*二级指标权重
use E:\论文学习\论文\贸易便利化\主成分分析\3级权重和系数.dta,clear
drop f*
reshape long wight,i(var) j(year)
gen er = substr(var,1,1)
drop var
collapse (sum) wight ,by(er year)
reshape wide wight,i(er) j(year)
save E:\论文学习\论文\贸易便利化\主成分分析\2级权重修改.dta,replace
*一级指标权重
use E:\论文学习\论文\贸易便利化\主成分分析\2级权重修改.dta,clear
reshape long wight,i(er) j(year)
gen yi = "0"
replace yi = "kouan"    if er == "a" | er == "b"
replace yi = "jianguan" if er == "c" | er == "d"
replace yi = "guizhi"   if er == "e" | er == "f"
replace yi = "dianzi"   if er == "g" | er == "h" | er == "i"
drop er
collapse (sum) wight ,by(yi year)
reshape wide wight,i(yi) j(year)
save E:\论文学习\论文\贸易便利化\主成分分析\1级权重修改.dta,replace

*********计算二级得分
use E:\论文学习\论文\贸易便利化\全球贸易便利化指标标准化后.dta,clear
merge n:1 year using E:\论文学习\论文\贸易便利化\主成分分析\三级权重.dta
gen Q1 = a1*qa1 + a2*qa2
gen Q2 = b1*qb1 + b2*qb2 + b3*qb3
gen Q3 = c1*qc1 + c2*qc2 + c3*qc3 + c4*qc4
gen Q4 = d1*qd1 + d2*qd2
gen Q5 = e1*qe1 + e2*qe2 + e3*qe3 + e4*qe4
gen Q6 = f1*qf1 + f2*qf2
gen Q7 = g1*qg1 + g2*qg2
gen Q8 = h1*qh1 + h2*qh2
gen Q9 = i1*qi1 + i2*qi2
drop a1-qi2
drop _merge
save E:\论文学习\论文\贸易便利化\主成分分析\二级得分修改.dta,replace
outsheet using 二级得分修改.xls,replace
*一级得分
use E:\论文学习\论文\贸易便利化\主成分分析\二级得分修改.dta,clear
merge n:1 year using E:\论文学习\论文\贸易便利化\主成分分析\二级指标权重long.dta
drop _merge
gen C1 = Q1*qa + Q2*qb
gen C2 = Q3*qc + Q4*qd
gen C3 = Q5*qe + Q6*qf
gen C4 = Q7*qg + Q8*qh + Q9*qi
drop Q1-qi
save E:\论文学习\论文\贸易便利化\主成分分析\一级修改得分.dta,replace
outsheet using 一级修改得分.xls,replace

*总得分
use E:\论文学习\论文\贸易便利化\全球贸易便利化指标标准化后.dta,clear
merge n:1 year using E:\论文学习\论文\贸易便利化\主成分分析\三级权重.dta
gen Q1 = a1*qa1 + a2*qa2
gen Q2 = b1*qb1 + b2*qb2 + b3*qb3
gen Q3 = c1*qc1 + c2*qc2 + c3*qc3 + c4*qc4
gen Q4 = d1*qd1 + d2*qd2
gen Q5 = e1*qe1 + e2*qe2 + e3*qe3 + e4*qe4
gen Q6 = f1*qf1 + f2*qf2
gen Q7 = g1*qg1 + g2*qg2
gen Q8 = h1*qh1 + h2*qh2
gen Q9 = i1*qi1 + i2*qi2
drop a1-qi2
drop _merge
gen twtfi = Q1+ Q2+ Q3+ Q4+ Q5+ Q6+ Q7+ Q8+ Q9
drop Q1-Q9
save E:\论文学习\论文\贸易便利化\主成分分析\总体修改得分.dta,replace
outsheet using 总体修改得分.xls,replace









