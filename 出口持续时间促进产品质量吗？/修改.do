use  E:\论文学习\论文\出口持续时间延长有利于出口质量的提升吗？\数据\回归数据\回归所有变量.dta,clear
tostring t,replace
gen idd = impotergoods + t
merge n:1 idd using E:\论文学习\论文\出口持续时间延长有利于出口质量的提升吗？\idd.dta 
keep  if _merge == 3
destring t ,gen(year)
duplicates drop impotergood year,force
xtset impotergood year
****增加变量
*金融危机
gen crisis = 0
replace crisis = 1 if year > 2008

*人均GDP
drop id
drop _merge
rename iso3 id
merge n:1 id year using E:\论文学习\论文\出口持续时间延长有利于出口质量的提升吗？\数据\人均GDP\rgdp.dta
keep if _merge == 3
drop _merge
gen lnrdp = ln(rdp)
save E:\论文学习\论文\出口持续时间延长有利于出口质量的提升吗？\数据\回归数据\修改回归.dta,replace
*产品出口额
gen L_export = L.lnexport

****回归
set more off
*fe
xtreg lnnewprody lnduration lnunit lnvs  fta lnhamcap lnopen  lnrdp  lnexport ,fe 
est store m1
*re
xtreg lnnewprody lnduration lnunit lnvs  fta lnhamcap lnopen  lnrdp lnexport ,re
est store m2
*2SLS
ivreg2 lnnewprody (lnduration=L.lnduration ) lnunit lnvs  fta lnhamcap lnopen lnrdp lnexport ,gmm2s robust
est store m3
outreg2 [m1  m2 m3 ] using 11组回归.xls,replace

*第二组回归

*高收入国家
set more off
xtreg lnnewprody lnduration lnunit lnvs  fta lnhamcap lnopen lnrdp  lnexport if ins == 1,fe 
est store m11
ivreg2 lnnewprody (lnduration=L.lnduration) lnunit lnvs  fta lnhamcap lnopen lnrdp  lnexport if ins == 1,gmm2s robust
est store m12

*中收入国家
xtreg lnnewprody lnduration lnunit lnvs  fta lnhamcap lnopen lnrdp  lnexport if ins == 3 | ins == 4,fe 
est store m13
ivreg2 lnnewprody (lnduration=L.lnduration) lnunit lnvs  fta lnhamcap lnopen lnrdp  lnexport if ins == 3 | ins == 4,gmm2s robust
est store m14

*低收入国家
xtreg lnnewprody lnduration lnunit lnvs  fta lnhamcap lnopen lnrdp  lnexport if ins == 2,fe 
est store m15
ivreg2 lnnewprody (lnduration=L.lnduration) lnunit lnvs  fta lnhamcap lnopen lnrdp  lnexport if ins == 2,gmm2s robust
est store m16

outreg2 [m11  m12 m13  m14 m15  m16] using 第二组.xls,replace

*第三组回归
*高技术
set more off
xtreg lnnewprody lnduration lnunit lnvs  fta lnhamcap lnopen lnrdp  lnexport if isictype == 1,fe 
est store m21
ivreg2 lnnewprody (lnduration=L.lnduration) lnunit lnvs  fta lnhamcap lnopen lnrdp  lnexport if isictype == 1,gmm2s robust
est store m22

*中技术
xtreg lnnewprody lnduration lnunit lnvs  fta lnhamcap lnopen lnrdp  lnexport if isictype == 2,fe 
est store m23
ivreg2 lnnewprody (lnduration=L.lnduration) lnunit lnvs  fta lnhamcap lnopen lnrdp  lnexport if isictype == 2,gmm2s robust
est store m24

*低低技术
xtreg lnnewprody lnduration lnunit lnvs  fta lnhamcap lnopen lnrdp  lnexport if isictype == 3,fe 
est store m25
ivreg2 lnnewprody (lnduration=L.lnduration) lnunit lnvs  fta lnhamcap lnopen lnrdp  lnexport if isictype == 3,gmm2s robust
est store m26

outreg2 [m21  m22 m23  m24 m25  m26] using 第三组.xls,replace

*第四组回归
*右删除
*进行右删除处理
use E:\论文学习\论文\出口持续时间延长有利于出口质量的提升吗？\数据\回归数据\修改回归.dta,clear
duplicates drop impotergood year,force
xtset impotergood year
ivreg2 lnnewprody (lnduration=L.lnduration) lnunit lnvs  fta lnhamcap lnopen lnrdp  lnexport ,gmm2s robust
est store m41
outreg2 [m41] using 第41.xls,replace

*删除第一个持续期
keep year exports impotergoods
rename export v
rename impotergoods id
rename year t
duplicates drop id t,force
reshape wide v,i(id) j(t)
reshape long v,i(id) j(t)  //扩充数据
qui replace v=0 if v== .
generate birthyr=t
sort id t
local N = _N
qui forvalues i = 2/`N' {
 local j = `i'-1 
 if (id[`i']==id[`j'])&(v[`j']~=0)&(t[`i'] == t[`j']+1) {
   qui replace birthyr = birthyr[`j']     in `i'
 }
 }
drop if birthyr==t&v==0 //初始年份设定

generate spid2=1
local N = _N
qui forvalues i = 2/`N' {
 if (id[`i']==id[`i'-1]) &(v[`i'-1]==0)  {
  qui replace spid2 = spid2[`i'-1]+1 in `i'
 }
 if (id[`i']==id[`i'-1]) &(v[`i'-1]~=0)& (t[`i'] == t[`i'-1]+1) {
  qui replace spid2 = spid2[`i'-1] in `i'
  }
} 
generate spellid2=id+"0"+strofreal(spid2)
generate fail2=0
replace fail2=1 if v==0 
drop if spid2 ==1
keep id t 
rename  id impotergoods
rename  t year
save E:\论文学习\论文\出口持续时间延长有利于出口质量的提升吗？\数据\回归数据\第一个时间段删除后.dta,replace

*保留第一个时间段
use E:\论文学习\论文\出口持续时间延长有利于出口质量的提升吗？\数据\回归数据\修改回归.dta,clear
merge 1:1  impotergoods year using E:\论文学习\论文\出口持续时间延长有利于出口质量的提升吗？\数据\回归数据\第一个时间段删除后.dta
drop if _merge == 3
drop _merge
duplicates drop impotergood year,force

xtset impotergood year

*fe
xtreg lnnewprody lnduration lnunit lnvs  fta lnhamcap lnopen lnrdp  lnexport ,fe 
est store m42
*re
xtreg lnnewprody lnduration lnunit lnvs  fta lnhamcap lnopen lnrdp  lnexport ,re
est store m43
*2SLS
ivreg2 lnnewprody (lnduration=L.lnduration ) lnunit lnvs  fta lnhamcap lnopen  lnrdp  lnexport,gmm2s robust
est store m44
outreg2 [ m42  m43 m44 ] using 42组回归.xls,replace

****统计性表述

use E:\论文学习\论文\出口持续时间延长有利于出口质量的提升吗？\数据\回归数据\修改回归.dta,clear
keep lnnewprody  lnduration lnunit lnvs  fta lnhamcap lnopen  lnrdp  lnexport
sum
