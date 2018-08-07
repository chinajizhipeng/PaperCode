///完全平衡面板处理
***提取因子
*企业 140501家企业
use  D:\引力参数\回归数据\gra_raw.dta,clear
merge n:1 iso3 using D:\引力参数\数据集\完全平衡\iso31.dta
keep if _merge == 3
drop _merge
keep firmn 
duplicates drop firmn,force
gen me = 1
save D:\引力参数\数据集\完全平衡\firmn.dta,replace
*国家 204个国家
use D:\firmdata\cus-indu.dta,clear
keep iso3 
duplicates drop iso3,force
gen me = 1
save D:\引力参数\数据集\完全平衡\iso3.dta,replace
use D:\引力参数\数据集\ConDIST.dta,clear
keep iso3 
save D:\引力参数\数据集\完全平衡\iso31.dta,replace
use D:\引力参数\数据集\完全平衡\iso3.dta,clear
merge 1:1 iso3 using D:\引力参数\数据集\完全平衡\iso31.dta
keep if _merge == 3
drop _merge
save D:\引力参数\数据集\完全平衡\iso3.dta,replace
*年份
use D:\firmdata\cus-indu.dta,clear
drop if yr < 2000
keep yr
duplicates drop yr,force
gen me = 1
sort yr
save D:\引力参数\数据集\完全平衡\yr.dta,replace
**切分完全平衡面板数据 按行业
foreach file in 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 {
use  D:\引力参数\数据集\完全平衡\firmn_iso_isic.dta,clear
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
qui save E:\reg\reg`file'.dta,replace
di `file'
}
*logit
set more off 
foreach file in 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 {
qui use E:\reg\reg`file'.dta,clear
qui logit pro lndis lngdp i.yr
di `file'
di _b[lndis]
}


qui use E:\reg\reg15.dta,clear
merge n:1 firmn using D:\引力参数\数据集\rank.dta 
keep if _merge == 3
drop _merge
merge n:1 iso3 using D:\引力参数\数据集\亚洲国家.dta
keep if _merge == 3

qui egen yriso = group(yr_iso) 
qui egen fi = group(firmn) 
qui logit pro lndis lngdp i.yr
di _b[lndis]













