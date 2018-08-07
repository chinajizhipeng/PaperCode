*******************根据工业库行业分类***********************
*海关数据库加总到企业-出口国层面
clear
set more off
use D:\firmdata\cus-indu.dta
drop exp_or_imp company city tel phone name   //删除多余变量
collapse (sum) value ,by(yr firmn)
save D:\引力参数\第二种方法\firm_export.dta,replace
*估计企业生产率
use D:\引力参数\matchpanel.dta,clear
drop if yr < 2000
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
gen cic2 = substr(cic,1,2)					//行业
gen lnY = ln(revenue+1)
gen lnK = ln(fixedassets+1)
gen lnL = ln(employment+1) 
keep firmn yr province lnY lnK lnL revenue cic2
egen firmid_ind=group(firmn)
xtset firmid yr
xi:xtreg lnY lnK lnL i.yr i.province i.cic2
gen tfp_OLS = lnY - _b[lnL]*lnL - _b[lnK]*lnK
keep firmn yr tfp_OLS revenue cic2
save D:\引力参数\第二种方法\tfp_ols.dta,replace
*将企业生产率和行业合并到海关数据库中
use D:\引力参数\第二种方法\firm_export.dta,clear
merge n:1 yr firmn using D:\引力参数\第二种方法\tfp_ols.dta
keep if _merge == 3
drop _merge
save D:\引力参数\第二种方法\tfp_export_firmn.dta,replace 
***估计第三个模型
*划分行业
set more off
foreach file in 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43{
	use  D:\引力参数\第二种方法\tfp_export_firmn.dta,clear
	keep if cic2 == "`file'"
	save D:\引力参数\第二种方法\tfp`file'.dta,replace 
}
*分行业回归
log using D:\引力参数\回归数据\行业分割\tfp\tfp.log,replace 
set more off
foreach file in 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37  39 40 41 42 43{
	use  D:\引力参数\第二种方法\tfp`file'.dta,clear
	drop if revenue == 0
	gsort yr -tfp_OLS
	bys yr :gen cum_re = sum(value)
	egen firmid=group(firmn)
	gen lny  = ln(cum_re)
	gen lntfp = ln(tfp_OLS)
	xtset firmid yr
	qui xi:xtreg  lny lntfp 
	di `file'
	di _b[lntfp]
}
log close
***估计第二个模型
***估计第三个模型




