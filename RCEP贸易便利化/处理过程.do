

*主成分分析
use E:\论文学习\论文\RCEP各国贸易便利化程度测算及对出口影响的实证研究\数据\初始数据.dta,clear
encode id,gen(idd)
xtset idd year
global vars "afs alt avfs bcp bgr elfsd fdgo ibt iui lri pyb qati qpi qr qri tgp tt ipb"
foreach v of varlist $vars{
egen `v'1 =max(`v')
replace `v'=`v'/`v'1
}
drop afs1 - ipb1
set more off
pca avfs afs qr qri qati qpi iui ibt lri alt bgr tgp elfsd fdgo tt bcp ipb pyb
estat smc


*测度成员国
gen afs1   = 0.059
gen avfs1  = 0.053
gen qr1    = 0.071
gen qri1   = 0.062
gen qati1  = 0.070
gen qpi1   = 0.066
gen iui1   = 0.061
gen ibt1   = 0.060
gen lri1   = 0.070
gen alt1   = 0.053
gen bgr1   = 0.046
gen tgp1   = 0.059
gen elfsd1 = 0.064
gen fdgo1  = 0.058
gen tt1    =-0.015
gen bcp1   = 0.065
gen ipb1   = 0.060
gen pyb1   = 0.040

gen twtfi=avfs*avfs1+afs*afs1+qr*qr1+qri*qri1+qati*qati1+qpi*qpi1+iui*iui1+ ///
ibt*ibt1+lri*lri1+alt*alt1+bgr*bgr1+tgp*tgp1+elfsd*elfsd1+fdgo*fdgo1+tt*tt1 ///
+bcp*bcp1+ipb*ipb1+pyb*pyb1

keep  id year twtfi
reshape wide twtfi,i(id) j(year)
gsort -twtfi2012
gen p =_n
gsort -twtfi2013
gen pp =_n
gsort -twtfi2014
gen ppp =_n
gsort -twtfi2015
gen pppp =_n
gsort -twtfi2016
gen ppppp =_n
order id twtfi2012 p twtfi2013 pp twtfi2014 ppp twtfi2015 pppp twtfi2016 ppppp
gsort -twtfi2012
save E:\论文学习\论文\RCEP各国贸易便利化程度测算及对出口影响的实证研究\数据\填充.dta,replace

*************面板回归************
use E:\论文学习\论文\RCEP各国贸易便利化程度测算及对出口影响的实证研究\数据\填充.dta,clear
drop p pp ppp pppp ppppp
reshape long twtfi ,i(id)j(year)
drop if id == "CHN"
merge 1:1 year id using E:\论文学习\论文\RCEP各国贸易便利化程度测算及对出口影响的实证研究\数据\贸易数据.dta
drop _merge
merge 1:1 year id using E:\论文学习\论文\RCEP各国贸易便利化程度测算及对出口影响的实证研究\数据\人口.dta
drop _merge
merge 1:1 year id using E:\论文学习\论文\RCEP各国贸易便利化程度测算及对出口影响的实证研究\数据\gdp.dta
drop _merge
merge n:1  id using E:\论文学习\论文\RCEP各国贸易便利化程度测算及对出口影响的实证研究\数据\asean.dta
drop _merge
merge n:1  id using E:\论文学习\论文\RCEP各国贸易便利化程度测算及对出口影响的实证研究\数据\dis.dta
drop _merge
merge n:1  id using E:\论文学习\论文\RCEP各国贸易便利化程度测算及对出口影响的实证研究\数据\border.dta
drop _merge
save E:\论文学习\论文\RCEP各国贸易便利化程度测算及对出口影响的实证研究\数据\回归数据.dta

use E:\论文学习\论文\RCEP各国贸易便利化程度测算及对出口影响的实证研究\数据\回归数据.dta,clear

encode id,gen(idd)
xtset idd year
gen lnexport = ln(export)
gen lntwtfi  = ln(twtfi+1)
gen lnpop    = ln(pop)
gen lngdp    = ln(gdp)
gen lndis    = ln(dis)

reg lnexport lntwtfi lnpop lngdp lndis asean border ,r
est store m1
xi:reg lnexport lntwtfi lnpop lngdp lndis asean border i.id ,r
est store m2
xtreg lnexport lntwtfi lnpop lngdp lndis asean border ,r fe
est store m3
xi:xtreg lnexport lntwtfi lnpop lngdp lndis asean border i.id,r fe
est store m4
xi:xtreg lnexport lntwtfi lnpop lngdp lndis asean border i.id,r re
est store m5
xtgls lnexport lntwtfi lnpop lngdp lndis asean border 
est store m6
outreg2 [m1 m2 m3 m4 m5 m6] using asd.xls,replace


*******贸易潜力值测度
use E:\论文学习\论文\RCEP各国贸易便利化程度测算及对出口影响的实证研究\数据\回归数据.dta,clear
gen lnexport = ln(export)
gen lntwtfi  = ln(twtfi+1)
gen lnpop    = ln(pop)
gen lngdp    = ln(gdp)
gen lndis    = ln(dis)

gen a  = 3.01
gen b1 = 2.88
gen b2 = 0.06
gen b3 = 0.82
gen b4 = -0.53
gen b5 = 1.06
gen b6 = 0.24

gen at1 =a+b1*lntwtfi+b2*lnpop+b3*lngdp+b4*lndis+b5*asean+b5*border
save E:\论文学习\论文\RCEP各国贸易便利化程度测算及对出口影响的实证研究\数据\潜力值比较.dta,replace

gen e=2.7182
gen m1=e^at1


keep id m1 m2

use E:\论文学习\论文\RCEP各国贸易便利化程度测算及对出口影响的实证研究\数据\潜力值测度基础数据.dta,clear
keep if year == 2016
drop if id == "CHN"
gen afs1   = 0.059
gen avfs1  = 0.053
gen qr1    = 0.071
gen qri1   = 0.062
gen qati1  = 0.070
gen qpi1   = 0.066
gen iui1   = 0.061
gen ibt1   = 0.060
gen lri1   = 0.070
gen alt1   = 0.053
gen bgr1   = 0.046
gen tgp1   = 0.059
gen elfsd1 = 0.064
gen fdgo1  = 0.058
gen tt1    =-0.015
gen bcp1   = 0.065
gen ipb1   = 0.060
gen pyb1   = 0.040
save E:\论文学习\论文\RCEP各国贸易便利化程度测算及对出口影响的实证研究\数据\潜力值测度基础数据1.dta,replace

*金融服务提高10%
use E:\论文学习\论文\RCEP各国贸易便利化程度测算及对出口影响的实证研究\数据\潜力值测度基础数据1.dta,clear
gen twtfi=avfs*1.1*avfs1+afs*1.1*afs1+qr*qr1+qri*qri1+qati*qati1+qpi*qpi1+iui*iui1+ ///
ibt*ibt1+lri*lri1+alt*alt1+bgr*bgr1+tgp*tgp1+elfsd*elfsd1+fdgo*fdgo1+tt*tt1 ///
+bcp*bcp1+ipb*ipb1+pyb*pyb1
drop year - pyb1
rename twtfi twtfi1
save E:\论文学习\论文\RCEP各国贸易便利化程度测算及对出口影响的实证研究\数据\金融.dta,replace
*港口效率
use E:\论文学习\论文\RCEP各国贸易便利化程度测算及对出口影响的实证研究\数据\潜力值测度基础数据1.dta,clear
gen twtfi=avfs*avfs1+afs*afs1+qr*1.1*qr1+qri*1.1*qri1+qati*1.1*qati1+qpi*1.1*qpi1+iui*iui1+ ///
ibt*ibt1+lri*lri1+alt*alt1+bgr*bgr1+tgp*tgp1+elfsd*elfsd1+fdgo*fdgo1+tt*tt1 ///
+bcp*bcp1+ipb*ipb1+pyb*pyb1
drop year - pyb1
rename twtfi twtfi2
save E:\论文学习\论文\RCEP各国贸易便利化程度测算及对出口影响的实证研究\数据\港口效率.dta,replace
*电子商务
use E:\论文学习\论文\RCEP各国贸易便利化程度测算及对出口影响的实证研究\数据\潜力值测度基础数据1.dta,clear
gen twtfi=avfs*avfs1+afs*afs1+qr*qr1+qri*qri1+qati*qati1+qpi*qpi1+iui*1.1*iui1+ ///
ibt*1.1*ibt1+lri*1.1*lri1+alt*1.1*alt1+bgr*bgr1+tgp*tgp1+elfsd*elfsd1+fdgo*fdgo1+tt*tt1 ///
+bcp*bcp1+ipb*ipb1+pyb*pyb1
drop year - pyb1
rename twtfi twtfi3
save E:\论文学习\论文\RCEP各国贸易便利化程度测算及对出口影响的实证研究\数据\电子商务.dta,replace
*政府制度
use E:\论文学习\论文\RCEP各国贸易便利化程度测算及对出口影响的实证研究\数据\潜力值测度基础数据1.dta,clear
gen twtfi=avfs*avfs1+afs*afs1+qr*qr1+qri*qri1+qati*qati1+qpi*qpi1+iui*iui1+ ///
ibt*ibt1+lri*lri1+alt*alt1+bgr*1.1*bgr1+tgp*1.1*tgp1+elfsd*1.1*elfsd1+fdgo*1.1*fdgo1+tt*tt1 ///
+bcp*bcp1+ipb*ipb1+pyb*pyb1
drop year - pyb1
rename twtfi twtfi4
save E:\论文学习\论文\RCEP各国贸易便利化程度测算及对出口影响的实证研究\数据\政府制度.dta,replace
*海关环境
use E:\论文学习\论文\RCEP各国贸易便利化程度测算及对出口影响的实证研究\数据\潜力值测度基础数据1.dta,clear
gen twtfi=avfs*avfs1+afs*afs1+qr*qr1+qri*qri1+qati*qati1+qpi*qpi1+iui*iui1+ ///
ibt*ibt1+lri*lri1+alt*alt1+bgr*bgr1+tgp*tgp1+elfsd*elfsd1+fdgo*fdgo1+tt*1.1*tt1 ///
+bcp*1.1*bcp1+ipb*1.1*ipb1+pyb*1.1*pyb1
drop year - pyb1
rename twtfi twtfi5
save E:\论文学习\论文\RCEP各国贸易便利化程度测算及对出口影响的实证研究\数据\海关环境.dta,replace

use E:\论文学习\论文\RCEP各国贸易便利化程度测算及对出口影响的实证研究\数据\潜力值比较.dta,clear
merge 1:1 id using E:\论文学习\论文\RCEP各国贸易便利化程度测算及对出口影响的实证研究\数据\金融.dta
drop _merge
merge 1:1 id using E:\论文学习\论文\RCEP各国贸易便利化程度测算及对出口影响的实证研究\数据\港口效率.dta
drop _merge
merge 1:1 id using E:\论文学习\论文\RCEP各国贸易便利化程度测算及对出口影响的实证研究\数据\电子商务.dta
drop _merge
merge 1:1 id using E:\论文学习\论文\RCEP各国贸易便利化程度测算及对出口影响的实证研究\数据\政府制度.dta
drop _merge
merge 1:1 id using E:\论文学习\论文\RCEP各国贸易便利化程度测算及对出口影响的实证研究\数据\海关环境.dta
drop _merge
gen lnq1=ln(twtfi1+1)
gen lnq2=ln(twtfi2+1)
gen lnq3=ln(twtfi3+1)
gen lnq4=ln(twtfi4+1)
gen lnq5=ln(twtfi5+1)
gen at2 =a+b1*lnq1+b2*lnpop+b3*lngdp+b4*lndis+b5*asean+b5*border
gen at3 =a+b1*lnq2+b2*lnpop+b3*lngdp+b4*lndis+b5*asean+b5*border
gen at4 =a+b1*lnq3+b2*lnpop+b3*lngdp+b4*lndis+b5*asean+b5*border
gen at5 =a+b1*lnq4+b2*lnpop+b3*lngdp+b4*lndis+b5*asean+b5*border
gen at6 =a+b1*lnq5+b2*lnpop+b3*lngdp+b4*lndis+b5*asean+b5*border

gen e=2.7182
gen m1=e^at1
gen m2=e^at2
gen m3=e^at3
gen m4=e^at4
gen m5=e^at5
gen m6=e^at6

gen o1=m2-m1
gen o2=m3-m1
gen o3=m4-m1
gen o4=m5-m1
gen o5=m6-m1





