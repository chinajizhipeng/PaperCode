clear
insheet using E:\数据资料\CEPII数据\HS96\baci96_1998.csv
merge n:n i using 国家匹配.dta ,update replace          //匹配国家
tostring hs6 , replace  format(%06.0f)                  //数值型变字符型
keep if i==156
drop _merge
save E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\出口持续时间\1998.dta,replace
clear
insheet using E:\数据资料\CEPII数据\HS96\baci96_1999.csv
merge n:n i using 国家匹配.dta ,update replace          //匹配国家
tostring hs6 , replace  format(%06.0f)                  //数值型变字符型
keep if i==156
drop _merge
save E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\出口持续时间\1999.dta,replace
clear
insheet using E:\数据资料\CEPII数据\HS96\baci96_2000.csv
merge n:n i using 国家匹配.dta ,update replace          //匹配国家
tostring hs6 , replace  format(%06.0f)                  //数值型变字符型
keep if i==156
drop _merge
save E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\出口持续时间\2000.dta,replace
clear
insheet using E:\数据资料\CEPII数据\HS96\baci96_2001.csv
merge n:n i using 国家匹配.dta ,update replace          //匹配国家
tostring hs6 , replace  format(%06.0f)                  //数值型变字符型
keep if i==156
drop _merge
save E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\出口持续时间\2001.dta,replace
clear
insheet using E:\数据资料\CEPII数据\HS96\baci96_2002.csv
merge n:n i using 国家匹配.dta ,update replace          //匹配国家
tostring hs6 , replace  format(%06.0f)                  //数值型变字符型
keep if i==156
drop _merge
save E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\出口持续时间\2002.dta,replace
clear
insheet using E:\数据资料\CEPII数据\HS96\baci96_2003.csv
merge n:n i using 国家匹配.dta ,update replace          //匹配国家
tostring hs6 , replace  format(%06.0f)                  //数值型变字符型
keep if i==156
drop _merge
save E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\出口持续时间\2003.dta,replace
clear
insheet using E:\数据资料\CEPII数据\HS96\baci96_2004.csv
merge n:n i using 国家匹配.dta ,update replace          //匹配国家
tostring hs6 , replace  format(%06.0f)                  //数值型变字符型
keep if i==156
drop _merge
save E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\出口持续时间\2004.dta,replace

clear
insheet using E:\数据资料\CEPII数据\HS96\baci96_2005.csv
merge n:n i using 国家匹配.dta ,update replace          //匹配国家
tostring hs6 , replace  format(%06.0f)                  //数值型变字符型
keep if i==156
drop _merge
save E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\出口持续时间\2005.dta,replace
clear
insheet using E:\数据资料\CEPII数据\HS96\baci96_2006.csv
merge n:n i using 国家匹配.dta ,update replace          //匹配国家
tostring hs6 , replace  format(%06.0f)                  //数值型变字符型
keep if i==156
drop _merge
save E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\出口持续时间\2006.dta,replace
clear
insheet using E:\数据资料\CEPII数据\HS96\baci96_2007.csv
merge n:n i using 国家匹配.dta ,update replace          //匹配国家
tostring hs6 , replace  format(%06.0f)                  //数值型变字符型
keep if i==156
drop _merge
save E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\出口持续时间\2007.dta,replace
clear
insheet using E:\数据资料\CEPII数据\HS96\baci96_2008.csv
merge n:n i using 国家匹配.dta ,update replace          //匹配国家
tostring hs6 , replace  format(%06.0f)                  //数值型变字符型
keep if i==156
drop _merge
save E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\出口持续时间\2008.dta,replace
clear
insheet using E:\数据资料\CEPII数据\HS96\baci96_2009.csv
merge n:n i using 国家匹配.dta ,update replace          //匹配国家
tostring hs6 , replace  format(%06.0f)                  //数值型变字符型
keep if i==156
drop _merge
save E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\出口持续时间\2009.dta,replace
clear
insheet using E:\数据资料\CEPII数据\HS96\baci96_2010.csv
merge n:n i using 国家匹配.dta ,update replace          //匹配国家
tostring hs6 , replace  format(%06.0f)                  //数值型变字符型
keep if i==156
drop _merge
save E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\出口持续时间\2010.dta,replace
clear
insheet using E:\数据资料\CEPII数据\HS96\baci96_2011.csv
merge n:n i using 国家匹配.dta ,update replace          //匹配国家
tostring hs6 , replace  format(%06.0f)                  //数值型变字符型
keep if i==156
drop _merge
save E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\出口持续时间\2011.dta,replace


* 合并数据
use E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\出口持续时间\1998.dta,clear
append using E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\出口持续时间\1999.dta
append using E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\出口持续时间\2000.dta
append using E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\出口持续时间\2001.dta
append using E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\出口持续时间\2002.dta
append using E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\出口持续时间\2003.dta
append using E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\出口持续时间\2004.dta
append using E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\出口持续时间\2005.dta
append using E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\出口持续时间\2006.dta
append using E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\出口持续时间\2007.dta
append using E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\出口持续时间\2008.dta
append using E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\出口持续时间\2009.dta
append using E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\出口持续时间\2010.dta
append using E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\出口持续时间\2011.dta

gen iso3hs6=iso3+hs6
tostring j , replace  format(%03.0f)                  //数值型变字符型
gen iso3hs6j=iso3+hs6+j
save E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\出口持续时间\1999-2011.dta,replace
egen varname=group(iso3hs6j)
xtset var t
gen tt=t
drop if tt==1998            //左删除
                            //  drop if tt==2011            //右删除
save E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\出口持续时间\1999-2011出口持续.dta,replace
use E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\出口持续时间\1999-2011出口持续.dta,clear

gen lag1=L.t     //滞后1期
gen a1="1" if lag1 != .

gen lag2=L1.lag1  
gen a2="2" if lag2 != .

gen lag3=L1.lag2  
gen a3="3" if lag3 != .

gen lag4=L1.lag3 
gen a4="4" if lag4 != .

gen lag5=L1.lag4 
gen a5="5" if lag5 != .

gen lag6=L1.lag5 
gen a6="6" if lag6 != .

gen lag7=L1.lag6 
gen a7="7" if lag7 != .

gen lag8=L1.lag7 
gen a8="8" if lag8 != .

gen lag9=L1.lag8 
gen a9="9" if lag9 != .

gen lag10=L1.lag9 
gen a10="10" if lag10 != .

gen lag11=L1.lag10 
gen a11="11" if lag11 != .

gen lag12=L1.lag11 
gen a12="12" if lag12 != .

gen lag13=L1.lag12 
gen a13="13" if lag13 != .



destring a1 ,gen(b1)
destring a2 ,gen(b2)
destring a3 ,gen(b3)
destring a4 ,gen(b4)
destring a5 ,gen(b5)
destring a6 ,gen(b6)
destring a7 ,gen(b7)
destring a8 ,gen(b8)
destring a9 ,gen(b9)
destring a10 ,gen(b10)
destring a11 ,gen(b11)
destring a12 ,gen(b12)
destring a13 ,gen(b13)


egen dura = rowmax(b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13)

gen duration=dura+1
replace duration=1 if duration == .

drop lag1-b13
drop dura

save E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\出口持续时间\有持续时间.dta,replace













