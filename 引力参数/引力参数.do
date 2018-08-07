*一、清理前两个模型的数据
***使用基础数据，海关数据库和工业企业数据库合并
clear
set more off
use D:\firmdata\cus-indu.dta
drop exp_or_imp company city tel phone name   //删除多余变量
***对企业出口产品进行行业匹配
*根据盛斌（2002）的匹配方法 将HS编码分为GB/T分类的30个行业数据
//merge n:1 hs6 using D:\引力参数\数据集\HS-SITC.dta //匹配SITC编码
//drop _merge
//gen sitc_merge = substr(sitc3,1,3) //提取SITC前三位
//drop sitc3
//rename sitc_merge sitc3
//merge n:1 sitc3 using D:\引力参数\数据集\GBT-HS.dta
//drop _merge
*根据ISIC行业划分
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
gen isic2 = substr(reg_id,1,2)
gen iso3 = substr(reg_id,3,3)
gen firmn = substr(reg_id,6,.)
merge n:1 yr firmn using D:\引力参数\数据集\fimn_num.dta
keep if _merge == 3
drop _merge tfp_OLS
save D:\引力参数\回归数据\logistic_raw.dta,replace //未添加解释变量

*企业等级划分
/*
use D:\引力参数\matchpanel.dta,clear
drop if yr < 2000
keep firmn yr revenue
bys yr:cumul revenue,g(p) eq
gen rank = 0 
replace rank = 1 if p > 0 & p <= 0.1
replace rank = 2 if p > 0.1 & p <= 0.2
replace rank = 3 if p > 0.2 & p <= 0.3
replace rank = 4 if p > 0.3 & p <= 0.4
replace rank = 5 if p > 0.4 & p <= 0.5
replace rank = 6 if p > 0.5 & p <= 0.6
replace rank = 7 if p > 0.6 & p <= 0.7
replace rank = 8 if p > 0.7 & p <= 0.8
replace rank = 9 if p > 0.8 & p <= 0.9
replace rank = 10 if p > 0.9 & p <= 1
drop p 
drop revenue
save D:\引力参数\数据集\rank.dta,replace
*/
use D:\引力参数\matchpanel.dta,clear
drop if yr < 2000
keep firmn yr revenue
bys firmn :egen mean_out = mean(revenue)
duplicates drop firmn ,force
keep firmn mean_out
cumul mean_out,g(p) eq
gen rank = 0
replace rank = 1 if p > 0 & p <= 0.1
replace rank = 2 if p > 0.1 & p <= 0.2
replace rank = 3 if p > 0.2 & p <= 0.3
replace rank = 4 if p > 0.3 & p <= 0.4
replace rank = 5 if p > 0.4 & p <= 0.5
replace rank = 6 if p > 0.5 & p <= 0.6
replace rank = 7 if p > 0.6 & p <= 0.7
replace rank = 8 if p > 0.7 & p <= 0.8
replace rank = 9 if p > 0.8 & p <= 0.9
replace rank = 10 if p > 0.9 & p <= 1
drop if rank == 0
drop p mean_out
save D:\引力参数\数据集\rank.dta,replace
***TFP清理+估计
/*
*TFP_OP估计
use D:\引力参数\回归数据\gra_raw.dta,clear
merge n:1 firmn yr using D:\引力参数\matchpanel.dta //添加企业信息变量
keep if _merge == 3
drop _merge 
drop name legal_person town phone m product1_ id
gen id = isic2+iso3+firmn
sort id yr
egen firmid_ind=group(id)
xtset firmid yr

gen exit=0
sort firmid_ind yr
by firmid_ind, sort: replace exit=1 if yr!=yr[_n+1]-1
replace exit=0 if yr==2013           //生成退出变量

gen lnY = ln(addedvalue)                   //工业增加值？

gen lnl = ln(employment)                   //生成企业劳动力

gen state = 0
replace state = 1 if typef == "110"        //生成是否国企

gen lnK = ln(fixedassets)                  //生成企业固定资产
*匹配省份
rename zipf zip2
gen zip_2 = substr(zip2,1,2)
gen province = "0"
replace province = "1" if zip_2 == "10"
replace province = "2" if zip_2 == "30"
replace province = "3" if zip_2 == "05" | zip_2 == "06" | zip_2 == "07"
replace province = "4" if zip_2 == "03" | zip_2 == "04"
replace province = "5" if zip_2 == "01" | zip_2 == "02"
replace province = "6" if zip_2 == "11" | zip_2 == "12"
replace province = "7" if zip_2 == "13"
replace province = "8" if zip_2 == "15" | zip_2 == "16"
replace province = "9" if zip_2 == "20" 
replace province = "10" if zip_2 == "21" | zip_2 == "22"
replace province = "11" if zip_2 == "31" | zip_2 == "32"
replace province = "12" if zip_2 == "23" | zip_2 == "24"
replace province = "13" if zip_2 == "35" | zip_2 == "36"
replace province = "14" if zip_2 == "33" | zip_2 == "34"
replace province = "15" if zip_2 == "25" | zip_2 == "26" | zip_2 == "27"
replace province = "16" if zip_2 == "45" | zip_2 == "46" | zip_2 == "47"
replace province = "17" if zip_2 == "43" | zip_2 == "44"
replace province = "18" if zip_2 == "41" | zip_2 == "42"
replace province = "19" if zip_2 == "51" | zip_2 == "52"
replace province = "20" if zip_2 == "53" | zip_2 == "54"
replace province = "21" if zip_2 == "57"
replace province = "22" if zip_2 == "40"
replace province = "23" if zip_2 == "61" | zip_2 == "62" | zip_2 == "63" | zip_2 == "64"
replace province = "24" if zip_2 == "55" | zip_2 == "56"
replace province = "25" if zip_2 == "65" | zip_2 == "66" | zip_2 == "67"
replace province = "26" if zip_2 == "85" | zip_2 == "86"
replace province = "27" if zip_2 == "71" | zip_2 == "72" 
replace province = "28" if zip_2 == "73" | zip_2 == "74"
replace province = "29" if zip_2 == "81"
replace province = "30" if zip_2 == "75"
replace province = "31" if zip_2 == "83" | zip_2 == "84"
gen zip_4 = substr(zip2,1,4)
replace province = "3" if zip_2 == "25" & zip2 == "253800"
replace province = "5" if zip_2 == "13" & zip_4 == "1374"
replace province = "5" if zip_2 == "13" & zip_4 == "1375"
replace province = "5" if zip_2 == "13" & zip_4 == "1376"
replace province = "5" if zip_2 == "16" & zip_4 == "1626"
replace province = "5" if zip_2 == "16" & zip_4 == "1627"
replace province = "5" if zip_2 == "16" & zip_4 == "1628"
replace province = "5" if zip_2 == "75" & zip_4 == "7503"
replace province = "5" if zip_2 == "73" & zip_4 == "7373"
replace province = "5" if zip_2 == "73" & zip_4 == "7354"
replace province = "11" if zip_2 == "20" & zip_4 == "2024"
replace province = "29" if zip_2 == "62" & zip2 == "624700"
drop zip_2 zip_4                            //地区

gen ind =  isic2                            //行业

gen age = yr-commencementyr                 //企业年龄 需增加

gen L_K = L.assets
gen I = assets-L.assets+depr
gen LNI = ln(I)                             //生成企业当期投资

tab province,gen(Dum_r)                     //生成省份虚拟变量
tab yr,gen(Dum_yr)                          //生成年份虚拟变量
tab ind,gen(Dum_sic)                        //生成行业虚拟变量
  
*-OP96 估计(全样本)
opreg lnY, exit(exit) state(age lnK) proxy(LNI) ///
            free(lnl Dum_yr* Dum_sic* Dum_r*)       ///
            cvars(yr)                             ///
            vce(bootstrap, seed(1357) rep(5)) 
est store OP_all
*/
*使用普通生产率估计
use D:\引力参数\matchpanel.dta,clear
rename zipf zip2
gen zip_2 = substr(zip2,1,2)
gen province = "0"
replace province = "1" if zip_2 == "10"
replace province = "2" if zip_2 == "30"
replace province = "3" if zip_2 == "05" | zip_2 == "06" | zip_2 == "07"
replace province = "4" if zip_2 == "03" | zip_2 == "04"
replace province = "5" if zip_2 == "01" | zip_2 == "02"
replace province = "6" if zip_2 == "11" | zip_2 == "12"
replace province = "7" if zip_2 == "13"
replace province = "8" if zip_2 == "15" | zip_2 == "16"
replace province = "9" if zip_2 == "20" 
replace province = "10" if zip_2 == "21" | zip_2 == "22"
replace province = "11" if zip_2 == "31" | zip_2 == "32"
replace province = "12" if zip_2 == "23" | zip_2 == "24"
replace province = "13" if zip_2 == "35" | zip_2 == "36"
replace province = "14" if zip_2 == "33" | zip_2 == "34"
replace province = "15" if zip_2 == "25" | zip_2 == "26" | zip_2 == "27"
replace province = "16" if zip_2 == "45" | zip_2 == "46" | zip_2 == "47"
replace province = "17" if zip_2 == "43" | zip_2 == "44"
replace province = "18" if zip_2 == "41" | zip_2 == "42"
replace province = "19" if zip_2 == "51" | zip_2 == "52"
replace province = "20" if zip_2 == "53" | zip_2 == "54"
replace province = "21" if zip_2 == "57"
replace province = "22" if zip_2 == "40"
replace province = "23" if zip_2 == "61" | zip_2 == "62" | zip_2 == "63" | zip_2 == "64"
replace province = "24" if zip_2 == "55" | zip_2 == "56"
replace province = "25" if zip_2 == "65" | zip_2 == "66" | zip_2 == "67"
replace province = "26" if zip_2 == "85" | zip_2 == "86"
replace province = "27" if zip_2 == "71" | zip_2 == "72" 
replace province = "28" if zip_2 == "73" | zip_2 == "74"
replace province = "29" if zip_2 == "81"
replace province = "30" if zip_2 == "75"
replace province = "31" if zip_2 == "83" | zip_2 == "84"
gen zip_4 = substr(zip2,1,4)
replace province = "3" if zip_2 == "25" & zip2 == "253800"
replace province = "5" if zip_2 == "13" & zip_4 == "1374"
replace province = "5" if zip_2 == "13" & zip_4 == "1375"
replace province = "5" if zip_2 == "13" & zip_4 == "1376"
replace province = "5" if zip_2 == "16" & zip_4 == "1626"
replace province = "5" if zip_2 == "16" & zip_4 == "1627"
replace province = "5" if zip_2 == "16" & zip_4 == "1628"
replace province = "5" if zip_2 == "75" & zip_4 == "7503"
replace province = "5" if zip_2 == "73" & zip_4 == "7373"
replace province = "5" if zip_2 == "73" & zip_4 == "7354"
replace province = "11" if zip_2 == "20" & zip_4 == "2024"
replace province = "29" if zip_2 == "62" & zip2 == "624700"
drop zip_2 zip_4                            //地区
gen lnY = ln(revenue+1)
gen lnK = ln(fixedassets+1)
gen lnL = ln(employment+1) 
keep firmn yr province lnY lnK lnL outputi
egen firmid_ind=group(firmn)
xtset firmid yr
xi:xtreg lnY lnK lnL i.yr i.province //没有加行业虚拟变量
gen tfp_OLS = lnY - _b[lnL]*lnL - _b[lnK]*lnK
keep firmn yr tfp_OLS outputi
save D:\引力参数\数据集\tfp_ols.dta,replace
keep yr firmn tfp_OLS
save D:\引力参数\数据集\fimn_num.dta,replace




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

***GRAVITY 数据处理
use D:\引力参数\回归数据\gra_raw.dta,clear
*添加企业规模等级
merge n:1  firmn using D:\引力参数\数据集\rank.dta 
keep if _merge == 3
drop _merge 
*添加距离和毗邻变量
merge n:1 iso3  using D:\引力参数\数据集\ConDIST.dta
keep if _merge == 3
drop _merge distcap distw distwces iso_oo
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
gen lnexp = ln(industy_value)
gen lncgdp = ln(chngdp)
gen lnlan  =ln(1+csl)
gen regid = iso3+firmn
drop dist gdp industy_value chngdp csl
tostring yr,replace
gen yr_iso = yr + iso3
destring yr,replace
save D:\引力参数\回归数据\gra_reg.dta,replace
*use D:\引力参数\回归数据\gra_reg.dta,clear
*merge n:1 iso3 using "D:\引力参数\数据集\亚洲国家.dta
*keep if _merge == 3
*drop _merge
*save D:\引力参数\回归数据\gra_reg_Asia.dta,replace

***分割行业
**logistic 
set more off
foreach file in 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 {
use  D:\引力参数\回归数据\logistic_reg.dta,clear
keep if isic == `file'
save D:\引力参数\回归数据\行业分割\logistic\logistic`file'.dta,replace 
}
**gravity
set more off
foreach file in 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36{
use  D:\引力参数\回归数据\gra_reg.dta,clear
keep if isic2 == "`file'"
save D:\引力参数\回归数据\行业分割\gravity\gravity`file'.dta,replace 
}
************

*****模型回归
***第一个模型 logistic
log using D:\引力参数\回归数据\行业分割\logistic\logistic.log,replace 
set more off 
foreach file in 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36{
use D:\引力参数\回归数据\行业分割\logistic\logistic`file'.dta,clear 
egen id = group(regid) 
xtset id yr
*qui logistic pro lndis  //一半-0.1以下
*qui logistic pro lndis fta //基本在-0.1以下
*qui xtlogit pro lndis lnla //基本为负 但是基本在-0.1以上
**qui logistic pro lndis lngdp //小于-0.1的值较多
*qui logistic pro lndis fta contig //一半
qui logistic pro lndis lngdp lncgdp //大于-0.1的值较多
*qui xi:xtlogit pro lndis contig //基本为负 小于-0.1的较多
*qui xi:xtlogit pro lndis i.yr //小于-0.1值较多
**qui xi:logistic pro lndis i.rank //一半-0.1以下
*qui xi:xtlogit pro lndis lngdp i.rank
di `file'
di _b[lndis]
}
log close


***第二个模型 gravity
log using D:\引力参数\回归数据\行业分割\gravity\gravity.log,replace 
set more off 
foreach file in 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36{
clear
use D:\引力参数\回归数据\行业分割\gravity\gravity`file'.dta,clear 
egen id = group(regid)
qui xtset id yr
*qui xi:xtreg lnexp lndis //正数8个，负数的值比较正常
*qui xi:xtreg lnexp lndis lnlan //正数8个，负数的值比较正常
*qui xi:xtreg lnexp lndis fta  //正数较多
*qui xi:xtreg lnexp lndis lngdp //正数八个 负数在较为正常
*qui xi:xtreg lnexp lndis lngdp i.yr //正数八个 负数较大
*qui xi:xtreg lnexp lndis lngdp lncgdp i.iso3 //正数8个，负数的值比较正常
*qui xi:xtreg lnexp lndis i.iso3 i.rank //大部分为正数
*qui xi:xtreg lnexp lndis contig fta lnlan i.rank //正数较多
*qui xi:xtreg lnexp lndis i.rank,r //正数较多 数正常
**qui xi:xtreg lnexp lndis lngdp i.rank,r //7个正 数正常4
qui xi:reg lnexp lndis lngdp i.yr //8个
*qui xi:xtreg lnexp lndis i.rank i.iso3 //正数较多
di `file' 
di _b[lndis]
}
log close



***第三个模型
use  D:\引力参数\回归数据\gra_raw.dta,clear
collapse (sum) industy_value ,by (isic2 yr firmn)
rename industy_value export
merge n:1 firmn yr using D:\引力参数\数据集\tfp_ols.dta
keep if _merge == 3
drop _merge
destring isic2 ,gen(isic) 
save D:\引力参数\回归数据\tfp_reg.dta,replace
*行业分割
set more off
foreach file in 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 {
use  D:\引力参数\回归数据\tfp_reg.dta,clear
keep if isic == `file'
save D:\引力参数\回归数据\行业分割\tfp\tfp`file'.dta,replace 
}
*分行业回归
log using D:\引力参数\回归数据\行业分割\tfp\tfp.log,replace 
set more off
foreach file in 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 {
use D:\引力参数\回归数据\行业分割\tfp\tfp`file'.dta,clear
gsort yr tfp_OLS
bys yr :gen cum_out = sum(outputi)
egen firmid=group(firmn)
gen lny  = ln(cum_out-outputi)
gen lntfp = ln(tfp_OLS)
xtset firmid yr
qui xi:xtreg lny lntfp  i.yr 
di `file'
di _b[lntfp]
}
log close










