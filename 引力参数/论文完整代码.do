*一、清理前两个模型的数据
***使用基础数据，海关数据库和工业企业数据库合并
use D:\引力参数\数据集\贸易数据\cus-indu.dta,clear
drop exp_or_imp company city tel phone name   //删除多余变量
**根据ISIC行业划分
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
*删除国家代码不匹配的样本
use D:\引力参数\回归数据\gra_raw.dta,clear 
merge n:1 iso3 using D:\引力参数\数据集\完全平衡\iso3.dta
keep if _merge == 3
drop _merge me
save D:\引力参数\数据集\完全平衡\firmn_iso_isic.dta,replace
**完全平衡面板处理
*企业 140501家企业
use  D:\引力参数\数据集\完全平衡\firmn_iso_isic.dta,clear
keep firmn
duplicates drop firmn,force
save D:\引力参数\数据集\完全平衡\firmn.dta,replace
*国家 204个国家
use  D:\引力参数\数据集\完全平衡\firmn_iso_isic.dta,clear
keep iso3 
duplicates drop iso3,force
save D:\引力参数\数据集\完全平衡\iso3.dta,replace
***TFP清理+估计
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
**切分完全平衡面板数据 按行业
foreach file in 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 {
use D:\引力参数\数据集\完全平衡\firmn_iso_isic.dta,clear
keep if isic == `file'
save D:\引力参数\数据集\完全平衡\isic_ex`file'.dta,replace 
}
**按行业划分平衡数据
*添加企业出口-结束年份
set more off 
foreach file in 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 {
qui use  D:\引力参数\数据集\完全平衡\firmn_iso_isic.dta,clear
qui keep if isic == `file'
qui save D:\引力参数\数据集\完全平衡\isic_ex`file'.dta,replace 
qui use D:\引力参数\数据集\完全平衡\isic_ex`file'.dta,clear
qui keep yr firmn 
qui duplicates drop yr firmn ,force
qui sort firmn yr
qui gen id = firmn
qui bysort id: keep if _n==1
qui keep firmn yr
qui rename yr fis_yr 
qui save D:\引力参数\数据集\完全平衡\fir_firmn`file'.dta,replace //企业第一次出口的时间
qui use D:\引力参数\数据集\完全平衡\isic_ex`file'.dta,clear
qui keep yr firmn 
qui duplicates drop yr firmn ,force
qui gsort firmn -yr
qui gen id = firmn
qui bysort id: keep if _n==1
qui keep firmn yr
qui rename yr fin_yr 
qui save D:\引力参数\数据集\完全平衡\fin_firmn`file'.dta,replace //企业最后一次出口的时间
qui merge 1:1 firmn using D:\引力参数\数据集\完全平衡\fir_firmn`file'.dta
drop _merge
qui save D:\引力参数\数据集\完全平衡\fin_fir_firmn`file'.dta,replace //企业初次和最后一次出口的时间
*将企业变为平衡面板数据
qui use D:\引力参数\数据集\完全平衡\isic_ex`file'.dta,clear
qui duplicates drop iso3 firmn ,force
qui keep firmn iso3 yr
qui reshape wide yr,i(firmn) j(iso3) string
qui reshape long yr,i(firmn) j(iso3) string
qui gen b=1
qui gen id = iso3+firmn
qui replace yr = 2000 if yr == .
qui reshape wide b,i(id) j(yr) 
qui reshape long b,i(id) j(yr) 
qui drop b
qui merge n:1 firmn using D:\引力参数\数据集\完全平衡\fin_fir_firmn`file'.dta
qui drop _merge
qui drop if yr < fis_yr
qui drop if yr > fin_yr
qui merge 1:1 firmn iso3 yr using  D:\引力参数\数据集\完全平衡\isic_ex`file'.dta
qui drop isic isic2 _merge
qui gen pro = 1
qui replace pro = 0 if industy_value == .
*添加距离和毗邻变量
qui merge n:1 iso3  using D:\引力参数\数据集\ConDIST.dta
qui keep if _merge == 3
qui drop _merge iso_oo distcap distw distwces
*添加GDP
qui merge n:1 iso3 yr using D:\引力参数\数据集\gdp.dta
qui keep if _merge == 3
qui drop _merge 
*处理回归变量
qui gen lndis = ln(dist)
qui rename chngdp gdp
qui gen lngdp = ln(gdp)
qui tostring yr,replace
qui gen yr_iso = yr + iso3
qui destring yr,replace
qui egen reg_id = group(id) 
qui save D:\引力参数\回归数据\行业分割\logistic\reg`file'.dta,replace
di `file'
}
***GRAVITY 数据处理
use D:\引力参数\数据集\完全平衡\firmn_iso_isic.dta,clear
*添加距离和毗邻变量
merge n:1 iso3  using D:\引力参数\数据集\ConDIST.dta
keep if _merge == 3
drop _merge distcap distw distwces iso_oo
*添加GDP
merge n:1 iso3 yr using D:\引力参数\数据集\gdp.dta
keep if _merge == 3
drop _merge 
destring isic2 ,gen(isic)   //分行业使用
gen lndis = ln(dist)
gen lngdp = ln(chngdp)
gen lnexp = ln(industy_value)
gen regid = iso3+firmn
tostring yr,replace
gen yr_iso = yr + iso3
destring yr,replace
save D:\引力参数\回归数据\gra_reg.dta,replace
*分割行业
**gravity
set more off
foreach file in 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36{
use  D:\引力参数\回归数据\gra_reg.dta,clear
keep if isic2 == "`file'"
save D:\引力参数\回归数据\行业分割\gravity\gravity`file'.dta,replace 
}
************
*****模型回归
***第一个模型 logit
log using D:\引力参数\回归数据\行业分割\logistic\logistic.log,replace 
set more off 
foreach file in 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 {
qui use D:\引力参数\回归数据\行业分割\logistic\reg`file'.dta,clear
qui merge n:1 firmn yr using D:\引力参数\数据集\完全平衡\firmn_employment.dta 
qui keep if _merge == 3
qui gen lne = ln(employment)
logit pro lndis lngdp lne i.yr
di `file'
di _b[lndis]   //得到第一个参数
}
log close
***第二个模型 gravity
log using D:\引力参数\回归数据\行业分割\gravity\gravity.log,replace 
set more off 
foreach file in 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36{
clear
use D:\引力参数\回归数据\行业分割\gravity\gravity`file'.dta,clear 
qui merge n:1 firmn yr using D:\引力参数\数据集\完全平衡\firmn_employment.dta 
qui keep if _merge == 3
qui gen lne = ln( employment )
egen id = group(regid)
qui xtset id yr
xi:reg lnexp lndis lngdp lne i.yr
di `file' 
di _b[lndis]  //得到第二个参数
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
gsort yr -tfp_OLS
bys yr:gen cum_out = sum(outputi)
egen firmid=group(firmn)
gen lny  = ln(cum_out)
gen lntfp = ln(tfp_OLS)
xtset firmid yr
xi:xtreg lny lntfp i.yr 
di `file'
di _b[lntfp]  
}
log close
