*一、清理前两个模型的数据
***使用基础数据，海关数据库和工业企业数据库合并
clear
set more off
use D:\firmdata\cus-indu.dta
drop exp_or_imp company city tel phone name   //删除多余变量
gen hs6 = substr(hs_id,1,6) //提取海关编码前六位
rename hs6 hs96
merge n:1 hs96 using D:\引力参数\数据集\isichs96.dta
keep if _merge == 3
drop _merge
gen isic2 = substr(isic,1,2) //提取ISIC行业码前两位
save D:\引力参数\数据集\cus-indu2.dta,replace //处理行业数据后，待合并
use D:\引力参数\数据集\cus-indu2.dta,clear //处理行业数据后，待合并
collapse (sum) value,by(yr isic2 iso3 firmn)
rename value industy_value
merge n:1 yr firmn using D:\引力参数\数据集\fimn_num.dta
keep if _merge == 3
drop _merge tfp_OLS
save D:\引力参数\回归数据\gra_raw.dta,replace //未添加解释变量


use D:\引力参数\回归数据\gra_raw.dta,clear
gen reg_id = isic2+iso3+firmn
keep reg_id yr industy_value
duplicates drop reg_id yr,force
reshape wide industy_value,i(reg_id) j(yr)
reshape long industy_value,i(reg_id) j(yr)
//将企业第一次出口之前的样本删除
save "D:\引力参数\数据集\logit处理.dta"
drop if industy_value == .
sort reg_id yr
bysort reg_id: keep if _n==1
drop  industy_value
rename yr fir_yr
save "D:\引力参数\数据集\fir_ex.dta",replace
use D:\引力参数\数据集\logit处理.dta,clear
merge n:1 reg_id using D:\引力参数\数据集\fir_ex.dta
drop _merge
drop if yr < fir_yr

gen isic2 = substr(reg_id,1,2)
gen iso3 = substr(reg_id,3,3)
gen firmn = substr(reg_id,6,.)
merge n:1 yr firmn using D:\引力参数\数据集\fimn_num.dta
keep if _merge == 3
drop _merge tfp_OLS
save D:\引力参数\回归数据\logistic_raw.dta,replace //未添加解释变量

***LOGISTIC 数据处理
use D:\引力参数\回归数据\logistic_raw.dta,clear
*添加企业等级
merge n:1  firmn using D:\引力参数\数据集\rank.dta 
keep if _merge == 3
drop _merge 
*添加距离和毗邻变量
merge n:1 iso3  using D:\引力参数\数据集\ConDIST.dta
keep if _merge == 3
drop _merge iso_oo
*添加语言相似度
merge n:1 iso3  using D:\引力参数\数据集\languageCSL.dta
keep if _merge == 3
drop _merge
*添加GDP
merge n:1 iso3 yr using D:\引力参数\数据集\gdp.dta
keep if _merge == 3
drop _merge 
*添加FTA
merge n:1 iso3 yr using D:\引力参数\数据集\fta.dta
replace fta = 0 if fta == .
drop if _merge == 2
drop _merge
*添加中国GDP
merge n:1  yr using D:\引力参数\数据集\chngdp.dta
drop _merge

destring isic2 ,gen(isic)   //分行业使用
gen lndis = ln(dist)
gen lngdp = ln(gdp)
gen lncgdp = ln(chngdp)
gen lnla  =ln(1+csl)
gen lndis2 = ln(distcap)
gen lndis3 = ln(distw)
gen pro = 1
replace pro = 0 if industy_value == .
gen regid = iso3+firmn
drop dist gdp industy_value chngdp csl industy_value reg_id
tostring yr,replace
gen yr_iso = yr + iso3
destring yr,replace
save D:\引力参数\回归数据\logistic_reg.dta,replace


**logistic 
set more off
foreach file in 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 {
use  D:\引力参数\回归数据\logistic_reg.dta,clear
keep if isic == `file'
save D:\引力参数\回归数据\行业分割\logistic\logistic`file'.dta,replace 
}
***第一个模型 logistic
log using D:\引力参数\回归数据\行业分割\logistic\logistic.log,replace 


log close
