*处理过程
*（一）数据处理
*（二）生存分析
*（三）风险模型
*******************************************************************************
***（一）数据处理
 clear
 set more off 
 foreach file in 1996 1997 1998 1999 {
   clear
   insheet using E:\sci\hs96-6位数\hs96-6位数（ex1996-2015）\hs`file'.csv
   drop  qtytoken
   rename reporteriso3 i
   rename partneriso3 j
   rename productcode hs96
   rename year t
   keep if j == "JPN"
   g hs=substr(hs96,1,2)
   keep if hs =="01"|hs =="03"|hs =="04"|hs =="05"|hs =="06"|hs =="07"|hs =="08" ///
           |hs =="09"|hs =="10"|hs =="11"|hs =="12"|hs =="13"|hs =="14"|hs =="15"|hs =="16"| ///
            hs =="17"|hs =="18"|hs =="19"|hs =="20"|hs =="21"|hs =="22"|hs =="23"|hs =="24"| ///
            hs =="29"|hs =="33"|hs =="35"|hs =="38"|hs =="40"|hs =="41"|hs =="43"|hs =="50"| ///
            hs =="50"|hs =="53"|hs =="67"|hs =="98"
   save E:\论文学习\论文\中国对日本出口贸易持续期时间及影响因素研究\数据\出口数据\hs`file'.dta,replace
   }
      
clear
 set more off 
 foreach file in 2000 2001 2002 2003 2004 2005 2006 2007 2008 2009 2010 2011 2012 2013 2014 2015{
   clear
   insheet using E:\sci\hs96-6位数\hs96-6位数（ex1996-2015）\hs`file'.csv
   drop  qtytoken
   rename reporteriso3 i
   rename partneriso3 j
   tostring productcode,replace
   gen hss = strlen(productcode)
   gen hs96 ="0"+productcode if hss == 5
   replace hs96 = productcode if hss == 6
   rename year t
   keep if j == "JPN"
   g hs=substr(hs96,1,2)
   drop hss hs96
   keep if hs =="01"|hs =="03"|hs =="04"|hs =="05"|hs =="06"|hs =="07"|hs =="08" ///
           |hs =="09"|hs =="10"|hs =="11"|hs =="12"|hs =="13"|hs =="14"|hs =="15"|hs =="16"| ///
            hs =="17"|hs =="18"|hs =="19"|hs =="20"|hs =="21"|hs =="22"|hs =="23"|hs =="24"| ///
            hs =="29"|hs =="33"|hs =="35"|hs =="38"|hs =="40"|hs =="41"|hs =="43"|hs =="50"| ///
            hs =="50"|hs =="53"|hs =="67"|hs =="98"
   save E:\论文学习\论文\中国对日本出口贸易持续期时间及影响因素研究\数据\出口数据\hs`file'.dta,replace
   }
   *合并
clear 
set more off 
use E:\论文学习\论文\中国对日本出口贸易持续期时间及影响因素研究\数据\出口数据\hs1996.dta,clear
foreach file in  1997 1998 1999 2000 2001 2002 2003 2004 2005 2006 2007 2008 2009 2010 2011 2012 2013 2014 2015{
 append using E:\论文学习\论文\中国对日本出口贸易持续期时间及影响因素研究\数据\出口数据\hs`file'.dta
}
gen aa = hs96+productcode
drop hs96 productcode
rename aa hs96
save E:\论文学习\论文\中国对日本出口贸易持续期时间及影响因素研究\数据\出口数据\hs1996-2015.dta,replace
*********************************************************************************
************************生存分析
*生存分析数据
use E:\论文学习\论文\中国对日本出口贸易持续期时间及影响因素研究\数据\出口数据\hs1996-2015.dta,clear
keep t tradevalue hs96
rename tradevalue v
rename hs96 id
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
gen type=substr(id,1,2)
*分类
gen cla = 0
replace cla = 1 if type == "01"|type == "02"|type == "03"|type == "04"|type == "05"
replace cla = 2 if type == "06"|type == "07"|type == "08"|type == "09"|type == "10"|type == "11"|type == "12"|type == "13"|type == "14"
replace cla = 3 if type == "15"
replace cla = 4 if type == "16"|type == "17"|type == "18"|type == "19"|type == "20"|type == "21"|type == "22"|type == "23"|type == "24"
replace cla = 5 if type == "29"|type == "33"|type == "35"|type == "38"|type == "40"|type == "41"|type == "43"|type == "50"|type == "52"|type == "53"|type == "67"|type == "98"
drop if cla == 0
drop if birthyr==2000  //左删除
save E:\论文学习\论文\中国对日本出口贸易持续期时间及影响因素研究\数据\出口数据\生存分析.dta,replace
*生存分析
use E:\论文学习\论文\中国对日本出口贸易持续期时间及影响因素研究\数据\出口数据\生存分析.dta,clear
stset t,id(spellid2) f(fail2) origin(time birthyr)
sts graph             //图1
sts graph,by(cla)    //图2

*计算中位数和均值
stci
stsum
stci,rmean
stsum,by(cla)
stci ,by(cla) median 
stci ,by(cla) rmean  
sts list                         //全部
sts list if cla == 1                       
sts list if cla == 2             
sts list if cla == 3             
sts list if cla == 4             
sts list if cla == 5             

*****************************************************************************
**********************危险函数估计
*匹配数据
*产品单位价值
use E:\论文学习\论文\中国对日本出口贸易持续期时间及影响因素研究\数据\出口数据\hs1996-2015.dta,clear
gen unit = tradevalue/quantity
tostring t,replace
gen yearid = t+hs96
keep yearid unit
save E:\论文学习\论文\中国对日本出口贸易持续期时间及影响因素研究\数据\单位价值.dta,replace

use E:\论文学习\论文\中国对日本出口贸易持续期时间及影响因素研究\数据\出口数据\生存分析.dta,clear
tostring t ,gen(tt)
gen yearid = tt + id
merge 1:1 yearid using E:\论文学习\论文\中国对日本出口贸易持续期时间及影响因素研究\数据\单位价值.dta
drop  if _merge == 2 
drop _merge 
*匹配人均GDP
merge m:1 t using E:\论文学习\论文\中国对日本出口贸易持续期时间及影响因素研究\数据\人均GDP.dta
drop _merge 
*匹配产品竞争力
rename id hs96 
merge 1:1 t hs96 using E:\sci\中国产品的竞争力指数\TC.dta
drop if _merge == 2
drop _merge 
replace tc = 0 if tc < 0
replace tc = 1 if tc > 0
*匹配汇率
merge m:1 t using E:\论文学习\论文\中国对日本出口贸易持续期时间及影响因素研究\数据\汇率.dta
drop _merge 

stset t,f(fail2=0) origin(time birthyr)

stcox unit v rgdp tc rate,r nolog noshow
est store m1
streg unit v rgdp tc rate,r nolog noshow d(e)
est store m3
streg unit v rgdp tc rate,r nolog noshow d(w)
est store m5

*匹配港口质量
merge m:1 t using E:\论文学习\论文\中国对日本出口贸易持续期时间及影响因素研究\数据\港口质量.dta
drop _merge
*匹配关税
merge m:1 t using E:\论文学习\论文\中国对日本出口贸易持续期时间及影响因素研究\数据\关税和非关税壁垒.dta
drop _merge
stcox unit v rgdp tc rate  fei guanshui port ,r nolog noshow
est store m2
streg unit v rgdp tc rate  fei guanshui port ,r nolog noshow d(e)
est store m4
streg unit v rgdp tc rate  fei guanshui port ,r nolog noshow d(w)
est store m6




outreg2 [m1 m2 m3 m4 m5 m6] using 3.xls,replace




