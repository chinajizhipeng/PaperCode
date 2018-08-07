* 98年数据处理
clear
insheet using E:\数据资料\CEPII数据\HS96\baci96_1998.csv
merge n:n i using 国家匹配.dta ,update replace          //匹配国家
tostring hs6 , replace  format(%06.0f)                  //数值型变字符型
gen hs6iso3=iso3+hs6
destring hs6,gen (hs1996)                               //hs也有5位数的
drop _merge 
save E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\年份加总\1998数据加总前.dta,replace
collapse (sum) v,by(hs6iso3)                            //加总-国家-产品
gen tt="1998"
destring tt,gen( t)                                     //增加年份
drop tt
drop in 1/2285                                          //多余变量
g id=substr(hs6iso3,1,3)                                //增加国家
g hs6=substr(hs6iso3,4,9)                               //增加HS编码
save E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\年份加总\1998数据加总后.dta,replace




* 99年数据处理
clear
insheet using E:\数据资料\CEPII数据\HS96\baci96_1999.csv
merge n:n i using 国家匹配.dta ,update replace          //匹配国家
tostring hs6 , replace  format(%06.0f)                  //数值型变字符型
gen hs6iso3=iso3+hs6
destring hs6,gen (hs1996)                               //hs也有5位数的
drop _merge 
save E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\年份加总\1999数据加总前.dta,replace
collapse (sum) v,by(hs6iso3)                            //加总-国家-产品
gen tt="1999"
destring tt,gen( t)                                     //增加年份
drop tt
drop in 1/2390                                          //多余变量
g id=substr(hs6iso3,1,3)                                //增加国家
g hs6=substr(hs6iso3,4,9)                               //增加HS编码
save E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\年份加总\1999数据加总后.dta,replace



* 2000年数据处理
clear
insheet using E:\数据资料\CEPII数据\HS96\baci96_2000.csv
merge n:n i using 国家匹配.dta ,update replace          //匹配国家
tostring hs6 , replace  format(%06.0f)                  //数值型变字符型
gen hs6iso3=iso3+hs6
destring hs6,gen (hs1996)                               //hs也有5位数的
drop _merge 
save E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\年份加总\2000数据加总前.dta,replace
collapse (sum) v,by(hs6iso3)                            //加总-国家-产品
gen tt="2000"
destring tt,gen( t)                                     //增加年份
drop tt
drop in 1/2810                                          //多余变量
g id=substr(hs6iso3,1,3)                                //增加国家
g hs6=substr(hs6iso3,4,9)                               //增加HS编码
save E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\年份加总\2000数据加总后.dta,replace



* 2001年数据处理
clear
insheet using E:\数据资料\CEPII数据\HS96\baci96_2001.csv
merge n:n i using 国家匹配.dta ,update replace          //匹配国家
tostring hs6 , replace  format(%06.0f)                  //数值型变字符型
gen hs6iso3=iso3+hs6
destring hs6,gen (hs1996)                               //hs也有5位数的
drop _merge 
save E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\年份加总\2001数据加总前.dta,replace
collapse (sum) v,by(hs6iso3)                            //加总-国家-产品
gen tt="2001"
destring tt,gen( t)                                     //增加年份
drop tt
drop in 1/2645                                          //多余变量
g id=substr(hs6iso3,1,3)                                //增加国家
g hs6=substr(hs6iso3,4,9)                               //增加HS编码
save E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\年份加总\2001数据加总后.dta,replace



* 2002年数据处理
clear
insheet using E:\数据资料\CEPII数据\HS96\baci96_2002.csv
merge n:n i using 国家匹配.dta ,update replace          //匹配国家
tostring hs6 , replace  format(%06.0f)                  //数值型变字符型
gen hs6iso3=iso3+hs6
destring hs6,gen (hs1996)                               //hs也有5位数的
drop _merge 
save E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\年份加总\2002数据加总前.dta,replace
collapse (sum) v,by(hs6iso3)                            //加总-国家-产品
gen tt="2002"
destring tt,gen( t)                                     //增加年份
drop tt
drop in 1/2580                                          //多余变量
g id=substr(hs6iso3,1,3)                                //增加国家
g hs6=substr(hs6iso3,4,9)                               //增加HS编码
save E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\年份加总\2002数据加总后.dta,replace




* 2003年数据处理
clear
insheet using E:\数据资料\CEPII数据\HS96\baci96_2003.csv
merge n:n i using 国家匹配.dta ,update replace          //匹配国家
tostring hs6 , replace  format(%06.0f)                  //数值型变字符型
gen hs6iso3=iso3+hs6
destring hs6,gen (hs1996)                               //hs也有5位数的
drop _merge 
save E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\年份加总\2003数据加总前.dta,replace
collapse (sum) v,by(hs6iso3)                            //加总-国家-产品
gen tt="2003"
destring tt,gen( t)                                     //增加年份
drop tt
drop in 1/2623                                          //多余变量
g id=substr(hs6iso3,1,3)                                //增加国家
g hs6=substr(hs6iso3,4,9)                               //增加HS编码
save E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\年份加总\2003数据加总后.dta,replace






* 2004年数据处理
clear
insheet using E:\数据资料\CEPII数据\HS96\baci96_2004.csv
merge n:n i using 国家匹配.dta ,update replace          //匹配国家
tostring hs6 , replace  format(%06.0f)                  //数值型变字符型
gen hs6iso3=iso3+hs6
destring hs6,gen (hs1996)                               //hs也有5位数的
drop _merge 
save E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\年份加总\2004数据加总前.dta,replace
collapse (sum) v,by(hs6iso3)                            //加总-国家-产品
gen tt="2004"
destring tt,gen( t)                                     //增加年份
drop tt
drop in 1/2709                                          //多余变量
g id=substr(hs6iso3,1,3)                                //增加国家
g hs6=substr(hs6iso3,4,9)                               //增加HS编码
save E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\年份加总\2004数据加总后.dta,replace




* 2005年数据处理
clear
insheet using E:\数据资料\CEPII数据\HS96\baci96_2005.csv
merge n:n i using 国家匹配.dta ,update replace          //匹配国家
tostring hs6 , replace  format(%06.0f)                  //数值型变字符型
gen hs6iso3=iso3+hs6
destring hs6,gen (hs1996)                               //hs也有5位数的
drop _merge 
save E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\年份加总\2005数据加总前.dta,replace
collapse (sum) v,by(hs6iso3)                            //加总-国家-产品
gen tt="2005"
destring tt,gen( t)                                     //增加年份
drop tt
drop in 1/5918                                         //多余变量
g id=substr(hs6iso3,1,3)                                //增加国家
g hs6=substr(hs6iso3,4,9)                               //增加HS编码
save E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\年份加总\2005数据加总后.dta,replace





* 2006年数据处理
clear
insheet using E:\数据资料\CEPII数据\HS96\baci96_2006.csv
merge n:n i using 国家匹配.dta ,update replace          //匹配国家
tostring hs6 , replace  format(%06.0f)                  //数值型变字符型
gen hs6iso3=iso3+hs6
destring hs6,gen (hs1996)                               //hs也有5位数的
drop _merge 
save E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\年份加总\2006数据加总前.dta,replace
collapse (sum) v,by(hs6iso3)                            //加总-国家-产品
gen tt="2006"
destring tt,gen( t)                                     //增加年份
drop tt
drop in 1/6436                                          //多余变量
g id=substr(hs6iso3,1,3)                                //增加国家
g hs6=substr(hs6iso3,4,9)                               //增加HS编码
save E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\年份加总\2006数据加总后.dta,replace



* 2007年数据处理
clear
insheet using E:\数据资料\CEPII数据\HS96\baci96_2007.csv
merge n:n i using 国家匹配.dta ,update replace          //匹配国家
tostring hs6 , replace  format(%06.0f)                  //数值型变字符型
gen hs6iso3=iso3+hs6
destring hs6,gen (hs1996)                               //hs也有5位数的
drop _merge 
save E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\年份加总\2007数据加总前.dta,replace
collapse (sum) v,by(hs6iso3)                            //加总-国家-产品
gen tt="2007"
destring tt,gen( t)                                     //增加年份
drop tt
drop in 1/6552                                          //多余变量
g id=substr(hs6iso3,1,3)                                //增加国家
g hs6=substr(hs6iso3,4,9)                               //增加HS编码
save E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\年份加总\2007数据加总后.dta,replace



* 2008年数据处理
clear
insheet using E:\数据资料\CEPII数据\HS96\baci96_2008.csv
merge n:n i using 国家匹配.dta ,update replace          //匹配国家
tostring hs6 , replace  format(%06.0f)                  //数值型变字符型
gen hs6iso3=iso3+hs6
destring hs6,gen (hs1996)                               //hs也有5位数的
drop _merge 
save E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\年份加总\2008数据加总前.dta,replace
collapse (sum) v,by(hs6iso3)                            //加总-国家-产品
gen tt="2008"
destring tt,gen( t)                                     //增加年份
drop tt
drop in 1/5954                                          //多余变量
g id=substr(hs6iso3,1,3)                                //增加国家
g hs6=substr(hs6iso3,4,9)                               //增加HS编码
save E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\年份加总\2008数据加总后.dta,replace



* 2009年数据处理
clear
insheet using E:\数据资料\CEPII数据\HS96\baci96_2009.csv
merge n:n i using 国家匹配.dta ,update replace          //匹配国家
tostring hs6 , replace  format(%06.0f)                  //数值型变字符型
gen hs6iso3=iso3+hs6
destring hs6,gen (hs1996)                               //hs也有5位数的
drop _merge 
save E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\年份加总\2009数据加总前.dta,replace
collapse (sum) v,by(hs6iso3)                            //加总-国家-产品
gen tt="2009"
destring tt,gen( t)                                     //增加年份
drop tt
drop in 1/6319                                          //多余变量
g id=substr(hs6iso3,1,3)                                //增加国家
g hs6=substr(hs6iso3,4,9)                               //增加HS编码
save E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\年份加总\2009数据加总后.dta,replace

* 2010年数据处理
clear
insheet using E:\数据资料\CEPII数据\HS96\baci96_2010.csv
merge n:n i using 国家匹配.dta ,update replace          //匹配国家
tostring hs6 , replace  format(%06.0f)                  //数值型变字符型
gen hs6iso3=iso3+hs6
destring hs6,gen (hs1996)                               //hs也有5位数的
drop _merge 
save E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\年份加总\2010数据加总前.dta,replace
collapse (sum) v,by(hs6iso3)                            //加总-国家-产品
gen tt="2010"
destring tt,gen( t)                                     //增加年份
drop tt
drop in 1/6308                                          //多余变量
g id=substr(hs6iso3,1,3)                                //增加国家
g hs6=substr(hs6iso3,4,9)                               //增加HS编码
save E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\年份加总\2010数据加总后.dta,replace

* 2011年数据处理
clear
insheet using E:\数据资料\CEPII数据\HS96\baci96_2011.csv
merge n:n i using 国家匹配.dta ,update replace          //匹配国家
tostring hs6 , replace  format(%06.0f)                  //数值型变字符型
gen hs6iso3=iso3+hs6
destring hs6,gen (hs1996)                               //hs也有5位数的
drop _merge 
save E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\年份加总\2011数据加总前.dta,replace
collapse (sum) v,by(hs6iso3)                            //加总-国家-产品
gen tt="2011"
destring tt,gen( t)                                     //增加年份
drop tt
drop in 1/6424                                          //多余变量!
g id=substr(hs6iso3,1,3)                                //增加国家
g hs6=substr(hs6iso3,4,9)                               //增加HS编码
save E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\年份加总\2011数据加总后.dta,replace


























