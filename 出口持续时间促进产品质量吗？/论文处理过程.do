*一、合并数据
* 2000年数据处理
clear
insheet using E:\数据资料\CEPII数据\HS96\baci96_2000.csv
merge n:n i using 国家匹配.dta ,update replace          //匹配国家
tostring hs6 , replace  format(%06.0f)                  //数值型变字符型
gen hs6iso3=iso3+hs6
destring hs6,gen (hs1996)                               //hs也有5位数的
drop _merge 
save E:\新论文数据\数据\产品年份汇总\2000数据加总前.dta,replace  //每个国家出口目的地的价值、数量、年份
collapse (sum) v,by(hs6iso3)                            //加总-国家-产品
gen tt="2000"
destring tt,gen( t)                                     //增加年份
drop tt
drop in 1/2810                                          //多余变量
g id=substr(hs6iso3,1,3)                                //增加国家
g hs6=substr(hs6iso3,4,9)                               //增加HS编码
save E:\新论文数据\数据\产品年份汇总\2000数据加总后.dta,replace  //每个国家每年出口每类产品的总额


* 2001年数据处理
clear
insheet using E:\数据资料\CEPII数据\HS96\baci96_2001.csv
merge n:n i using 国家匹配.dta ,update replace          //匹配国家
tostring hs6 , replace  format(%06.0f)                  //数值型变字符型
gen hs6iso3=iso3+hs6
destring hs6,gen (hs1996)                               //hs也有5位数的
drop _merge 
save E:\新论文数据\数据\产品年份汇总\2001数据加总前.dta,replace
collapse (sum) v,by(hs6iso3)                            //加总-国家-产品
gen tt="2001"
destring tt,gen( t)                                     //增加年份
drop tt
drop in 1/2645                                          //多余变量
g id=substr(hs6iso3,1,3)                                //增加国家
g hs6=substr(hs6iso3,4,9)                               //增加HS编码
save E:\新论文数据\数据\产品年份汇总\2001数据加总后.dta,replace


* 2002年数据处理
clear
insheet using E:\数据资料\CEPII数据\HS96\baci96_2002.csv
merge n:n i using 国家匹配.dta ,update replace          //匹配国家
tostring hs6 , replace  format(%06.0f)                  //数值型变字符型
gen hs6iso3=iso3+hs6
destring hs6,gen (hs1996)                               //hs也有5位数的
drop _merge 
save E:\新论文数据\数据\产品年份汇总\2002数据加总前.dta,replace
collapse (sum) v,by(hs6iso3)                            //加总-国家-产品
gen tt="2002"
destring tt,gen( t)                                     //增加年份
drop tt
drop in 1/2580                                          //多余变量
g id=substr(hs6iso3,1,3)                                //增加国家
g hs6=substr(hs6iso3,4,9)                               //增加HS编码
save E:\新论文数据\数据\产品年份汇总\2002数据加总后.dta,replace


* 2003年数据处理
clear
insheet using E:\数据资料\CEPII数据\HS96\baci96_2003.csv
merge n:n i using 国家匹配.dta ,update replace          //匹配国家
tostring hs6 , replace  format(%06.0f)                  //数值型变字符型
gen hs6iso3=iso3+hs6
destring hs6,gen (hs1996)                               //hs也有5位数的
drop _merge 
save E:\新论文数据\数据\产品年份汇总\2003数据加总前.dta,replace
collapse (sum) v,by(hs6iso3)                            //加总-国家-产品
gen tt="2003"
destring tt,gen( t)                                     //增加年份
drop tt
drop in 1/2623                                          //多余变量
g id=substr(hs6iso3,1,3)                                //增加国家
g hs6=substr(hs6iso3,4,9)                               //增加HS编码
save E:\新论文数据\数据\产品年份汇总\2003数据加总后.dta,replace


* 2004年数据处理
clear
insheet using E:\数据资料\CEPII数据\HS96\baci96_2004.csv
merge n:n i using 国家匹配.dta ,update replace          //匹配国家
tostring hs6 , replace  format(%06.0f)                  //数值型变字符型
gen hs6iso3=iso3+hs6
destring hs6,gen (hs1996)                               //hs也有5位数的
drop _merge 
save E:\新论文数据\数据\产品年份汇总\2004数据加总前.dta,replace
collapse (sum) v,by(hs6iso3)                            //加总-国家-产品
gen tt="2004"
destring tt,gen( t)                                     //增加年份
drop tt
drop in 1/2709                                          //多余变量
g id=substr(hs6iso3,1,3)                                //增加国家
g hs6=substr(hs6iso3,4,9)                               //增加HS编码
save E:\新论文数据\数据\产品年份汇总\2004数据加总后.dta,replace


* 2005年数据处理
clear
insheet using E:\数据资料\CEPII数据\HS96\baci96_2005.csv
merge n:n i using 国家匹配.dta ,update replace          //匹配国家
tostring hs6 , replace  format(%06.0f)                  //数值型变字符型
gen hs6iso3=iso3+hs6
destring hs6,gen (hs1996)                               //hs也有5位数的
drop _merge 
save E:\新论文数据\数据\产品年份汇总\2005数据加总前.dta,replace
collapse (sum) v,by(hs6iso3)                            //加总-国家-产品
gen tt="2005"
destring tt,gen( t)                                     //增加年份
drop tt
drop in 1/5918                                         //多余变量
g id=substr(hs6iso3,1,3)                                //增加国家
g hs6=substr(hs6iso3,4,9)                               //增加HS编码
save E:\新论文数据\数据\产品年份汇总\2005数据加总后.dta,replace

* 2006年数据处理
clear
insheet using E:\数据资料\CEPII数据\HS96\baci96_2006.csv
merge n:n i using 国家匹配.dta ,update replace          //匹配国家
tostring hs6 , replace  format(%06.0f)                  //数值型变字符型
gen hs6iso3=iso3+hs6
destring hs6,gen (hs1996)                               //hs也有5位数的
drop _merge 
save E:\新论文数据\数据\产品年份汇总\2006数据加总前.dta,replace
collapse (sum) v,by(hs6iso3)                            //加总-国家-产品
gen tt="2006"
destring tt,gen( t)                                     //增加年份
drop tt
drop in 1/6436                                          //多余变量
g id=substr(hs6iso3,1,3)                                //增加国家
g hs6=substr(hs6iso3,4,9)                               //增加HS编码
save E:\新论文数据\数据\产品年份汇总\2006数据加总后.dta,replace

* 2007年数据处理
clear
insheet using E:\数据资料\CEPII数据\HS96\baci96_2007.csv
merge n:n i using 国家匹配.dta ,update replace          //匹配国家
tostring hs6 , replace  format(%06.0f)                  //数值型变字符型
gen hs6iso3=iso3+hs6
destring hs6,gen (hs1996)                               //hs也有5位数的
drop _merge 
save E:\新论文数据\数据\产品年份汇总\2007数据加总前.dta,replace
collapse (sum) v,by(hs6iso3)                            //加总-国家-产品
gen tt="2007"
destring tt,gen( t)                                     //增加年份
drop tt
drop in 1/6552                                          //多余变量
g id=substr(hs6iso3,1,3)                                //增加国家
g hs6=substr(hs6iso3,4,9)                               //增加HS编码
save E:\新论文数据\数据\产品年份汇总\2007数据加总后.dta,replace

* 2008年数据处理
clear
insheet using E:\数据资料\CEPII数据\HS96\baci96_2008.csv
merge n:n i using 国家匹配.dta ,update replace          //匹配国家
tostring hs6 , replace  format(%06.0f)                  //数值型变字符型
gen hs6iso3=iso3+hs6
destring hs6,gen (hs1996)                               //hs也有5位数的
drop _merge 
save E:\新论文数据\数据\产品年份汇总\2008数据加总前.dta,replace
collapse (sum) v,by(hs6iso3)                            //加总-国家-产品
gen tt="2008"
destring tt,gen( t)                                     //增加年份
drop tt
drop in 1/5954                                          //多余变量
g id=substr(hs6iso3,1,3)                                //增加国家
g hs6=substr(hs6iso3,4,9)                               //增加HS编码
save E:\新论文数据\数据\产品年份汇总\2008数据加总后.dta,replace

* 2009年数据处理
clear
insheet using E:\数据资料\CEPII数据\HS96\baci96_2009.csv
merge n:n i using 国家匹配.dta ,update replace          //匹配国家
tostring hs6 , replace  format(%06.0f)                  //数值型变字符型
gen hs6iso3=iso3+hs6
destring hs6,gen (hs1996)                               //hs也有5位数的
drop _merge 
save E:\新论文数据\数据\产品年份汇总\2009数据加总前.dta,replace
collapse (sum) v,by(hs6iso3)                            //加总-国家-产品
gen tt="2009"
destring tt,gen( t)                                     //增加年份
drop tt
drop in 1/6319                                          //多余变量
g id=substr(hs6iso3,1,3)                                //增加国家
g hs6=substr(hs6iso3,4,9)                               //增加HS编码
save E:\新论文数据\数据\产品年份汇总\2009数据加总后.dta,replace

* 2010年数据处理
clear
insheet using E:\数据资料\CEPII数据\HS96\baci96_2010.csv
merge n:n i using 国家匹配.dta ,update replace          //匹配国家
tostring hs6 , replace  format(%06.0f)                  //数值型变字符型
gen hs6iso3=iso3+hs6
destring hs6,gen (hs1996)                               //hs也有5位数的
drop _merge 
save E:\新论文数据\数据\产品年份汇总\2010数据加总前.dta,replace
collapse (sum) v,by(hs6iso3)                            //加总-国家-产品
gen tt="2010"
destring tt,gen( t)                                     //增加年份
drop tt
drop in 1/6308                                          //多余变量
g id=substr(hs6iso3,1,3)                                //增加国家
g hs6=substr(hs6iso3,4,9)                               //增加HS编码
save E:\新论文数据\数据\产品年份汇总\2010数据加总后.dta,replace

* 2011年数据处理
clear
insheet using E:\数据资料\CEPII数据\HS96\baci96_2011.csv
merge n:n i using 国家匹配.dta ,update replace          //匹配国家
tostring hs6 , replace  format(%06.0f)                  //数值型变字符型
gen hs6iso3=iso3+hs6
destring hs6,gen (hs1996)                               //hs也有5位数的
drop _merge 
save E:\新论文数据\数据\产品年份汇总\2011数据加总前.dta,replace
collapse (sum) v,by(hs6iso3)                            //加总-国家-产品
gen tt="2011"
destring tt,gen( t)                                     //增加年份
drop tt
drop in 1/6424                                          //多余变量!
g id=substr(hs6iso3,1,3)                                //增加国家
g hs6=substr(hs6iso3,4,9)                               //增加HS编码
save E:\新论文数据\数据\产品年份汇总\2011数据加总后.dta,replace

* 2012年数据处理
clear
insheet using E:\数据资料\CEPII数据\HS96\baci96_2012.csv
merge n:n i using 国家匹配.dta ,update replace          //匹配国家
tostring hs6 , replace  format(%06.0f)                  //数值型变字符型
gen hs6iso3=iso3+hs6
destring hs6,gen (hs1996)                               //hs也有5位数的
drop _merge 
save E:\新论文数据\数据\产品年份汇总\2012数据加总前.dta,replace
collapse (sum) v,by(hs6iso3)                            //加总-国家-产品
gen tt="2012"
destring tt,gen( t)                                     //增加年份
drop tt
drop in 1/6403                                          //多余变量!
g id=substr(hs6iso3,1,3)                                //增加国家
g hs6=substr(hs6iso3,4,9)                               //增加HS编码
save E:\新论文数据\数据\产品年份汇总\2012数据加总后.dta,replace

* 2013年数据处理
clear
insheet using E:\数据资料\CEPII数据\HS96\baci96_2013.csv
merge n:n i using 国家匹配.dta ,update replace          //匹配国家
tostring hs6 , replace  format(%06.0f)                  //数值型变字符型
gen hs6iso3=iso3+hs6
destring hs6,gen (hs1996)                               //hs也有5位数的
drop _merge 
save E:\新论文数据\数据\产品年份汇总\2013数据加总前.dta,replace
collapse (sum) v,by(hs6iso3)                            //加总-国家-产品
gen tt="2013"
destring tt,gen( t)                                     //增加年份
drop tt
drop in 1/6456                                          //多余变量!
g id=substr(hs6iso3,1,3)                                //增加国家
g hs6=substr(hs6iso3,4,9)                               //增加HS编码
save E:\新论文数据\数据\产品年份汇总\2013数据加总后.dta,replace

* 2014年数据处理
clear
insheet using E:\数据资料\CEPII数据\HS96\baci96_2014.csv
merge n:n i using 国家匹配.dta ,update replace          //匹配国家
tostring hs6 , replace  format(%06.0f)                  //数值型变字符型
gen hs6iso3=iso3+hs6
destring hs6,gen (hs1996)                               //hs也有5位数的
drop _merge 
save E:\新论文数据\数据\产品年份汇总\2014数据加总前.dta,replace
collapse (sum) v,by(hs6iso3)                            //加总-国家-产品
gen tt="2014"
destring tt,gen( t)                                     //增加年份
drop tt
drop in 1/6424                                          //多余变量!
g id=substr(hs6iso3,1,3)                                //增加国家
g hs6=substr(hs6iso3,4,9)                               //增加HS编码
save E:\新论文数据\数据\产品年份汇总\2014数据加总后.dta,replace

*合并2000-2014年国家-产品层面出口数据。
use E:\新论文数据\数据\产品年份汇总\2000数据加总后.dta,clear
 append using E:\新论文数据\数据\产品年份汇总\2001数据加总后.dta
 append using E:\新论文数据\数据\产品年份汇总\2002数据加总后.dta
 append using E:\新论文数据\数据\产品年份汇总\2003数据加总后.dta
 append using E:\新论文数据\数据\产品年份汇总\2004数据加总后.dta
 append using E:\新论文数据\数据\产品年份汇总\2005数据加总后.dta
 append using E:\新论文数据\数据\产品年份汇总\2006数据加总后.dta
 append using E:\新论文数据\数据\产品年份汇总\2007数据加总后.dta
 append using E:\新论文数据\数据\产品年份汇总\2008数据加总后.dta
 append using E:\新论文数据\数据\产品年份汇总\2009数据加总后.dta
 append using E:\新论文数据\数据\产品年份汇总\2010数据加总后.dta
 append using E:\新论文数据\数据\产品年份汇总\2011数据加总后.dta
 append using E:\新论文数据\数据\产品年份汇总\2012数据加总后.dta
 append using E:\新论文数据\数据\产品年份汇总\2013数据加总后.dta
 append using E:\新论文数据\数据\产品年份汇总\2014数据加总后.dta
save E:\新论文数据\数据\产品年份汇总\2000-2014.dta,replace

*二、计算全部技术复杂度与国内技术复杂度
*计算全部技术复杂度

use E:\新论文数据\数据\产品年份汇总\2000-2014.dta,clear
collapse (sum) v, by(id t)
rename v callv
save E:\新论文数据\数据\技术复杂度\国家出口总额.dta,replace //计算国家每年出口总额

use E:\新论文数据\数据\产品年份汇总\2000-2014.dta,clear
merge m:1 t id using E:\新论文数据\数据\技术复杂度\国家出口总额.dta
drop _merge
gen x=v/callv        //每个国家每种出口产品占该国的出口份额

collapse (sum) x, by(hs6 t)   //计算所有国家某产品份额之和，每年
rename x cpor //所有国家某产品比例之和
save E:\新论文数据\数据\技术复杂度\所有国家某产品份额之和.dta,replace //所有国家某产品份额之和，每年

use E:\新论文数据\数据\产品年份汇总\2000-2014.dta,clear
merge m:1 t id using E:\新论文数据\数据\技术复杂度\国家出口总额.dta
drop _merge
merge m:1 t hs6 using E:\新论文数据\数据\技术复杂度\所有国家某产品份额之和.dta
drop _merge
rename t year
merge m:m id year using E:\新论文数据\数据\人均GDP\rgdp.dta   //匹配人均GDP
drop _merge
drop if missing(rdp)
gen x=v/callv 
gen w=x/cpor //权重
gen wy=w*rdp
save E:\新论文数据\数据\技术复杂度\技术复杂的基础数据.dta,replace
collapse (sum) wy ,by(hs6 year)  //产品层面技术复杂度
rename wy prody
save E:\新论文数据\数据\技术复杂度\产品层面技术复杂度.dta,replace

use E:\新论文数据\数据\技术复杂度\技术复杂的基础数据.dta,clear  //计算国家层面技术复杂度
merge n:1 year hs6 using E:\新论文数据\数据\技术复杂度\产品层面技术复杂度.dta
drop _merge
gen expy =x*prody
collapse (sum) expy,by(id year)
save E:\新论文数据\数据\技术复杂度\全部技术复杂度国家层面.dta

*计算国内技术复杂度
*1.处理产品异质性
*2000年数据               //计算每种产品在世界上的出口总额 
use E:\新论文数据\数据\产品年份汇总\2000数据加总前.dta,clear
collapse (sum) v,by(hs6)    // 计算2000年产品分类加总
rename v sumv
save E:\新论文数据\数据\质量水平\2000产品加总.dta,replace
use E:\新论文数据\数据\产品年份汇总\2000数据加总前.dta,clear
merge m:1 hs6 using E:\新论文数据\数据\质量水平\2000产品加总.dta
drop _merge
drop if missing(t, hs6, hs1996, i ,j ,v ,q ,iso3 ,hs6iso3 ,sumv )
save E:\新论文数据\数据\质量水平\2000待合并.dta,replace

*2001年数据               //计算每种产品在世界上的出口总额 
use E:\新论文数据\数据\产品年份汇总\2001数据加总前.dta,clear
collapse (sum) v,by(hs6)    // 计算2001年产品分类加总
rename v sumv
save E:\新论文数据\数据\质量水平\2001产品加总.dta,replace
use E:\新论文数据\数据\产品年份汇总\2001数据加总前.dta,clear
merge m:1 hs6 using E:\新论文数据\数据\质量水平\2001产品加总.dta
drop _merge
drop if missing(t, hs6, hs1996, i ,j ,v ,q ,iso3 ,hs6iso3 ,sumv )
save E:\新论文数据\数据\质量水平\2001待合并.dta,replace

*2002年数据               //计算每种产品在世界上的出口总额 
use E:\新论文数据\数据\产品年份汇总\2002数据加总前.dta,clear
collapse (sum) v,by(hs6)    // 计算2002年产品分类加总
rename v sumv
save E:\新论文数据\数据\质量水平\2002产品加总.dta,replace
use E:\新论文数据\数据\产品年份汇总\2002数据加总前.dta,clear
merge m:1 hs6 using E:\新论文数据\数据\质量水平\2002产品加总.dta
drop _merge
drop if missing(t, hs6, hs1996, i ,j ,v ,q ,iso3 ,hs6iso3 ,sumv )
save E:\新论文数据\数据\质量水平\2002待合并.dta,replace

*2003年数据               //计算每种产品在世界上的出口总额 
use E:\新论文数据\数据\产品年份汇总\2003数据加总前.dta,clear
collapse (sum) v,by(hs6)    // 计算2003年产品分类加总
rename v sumv
save E:\新论文数据\数据\质量水平\2003产品加总.dta,replace
use E:\新论文数据\数据\产品年份汇总\2003数据加总前.dta,clear
merge m:1 hs6 using E:\新论文数据\数据\质量水平\2003产品加总.dta
drop _merge
drop if missing(t, hs6, hs1996, i ,j ,v ,q ,iso3 ,hs6iso3 ,sumv )
save E:\新论文数据\数据\质量水平\2003待合并.dta,replace

*2004年数据               //计算每种产品在世界上的出口总额 
use E:\新论文数据\数据\产品年份汇总\2004数据加总前.dta,clear
collapse (sum) v,by(hs6)    // 计算2004年产品分类加总
rename v sumv
save E:\新论文数据\数据\质量水平\2004产品加总.dta,replace
use E:\新论文数据\数据\产品年份汇总\2004数据加总前.dta,clear
merge m:1 hs6 using E:\新论文数据\数据\质量水平\2004产品加总.dta
drop _merge
drop if missing(t, hs6, hs1996, i ,j ,v ,q ,iso3 ,hs6iso3 ,sumv )
save E:\新论文数据\数据\质量水平\2004待合并.dta,replace

*2005年数据               //计算每种产品在世界上的出口总额 
use E:\新论文数据\数据\产品年份汇总\2005数据加总前.dta,clear
collapse (sum) v,by(hs6)    // 计算2005年产品分类加总
rename v sumv
save E:\新论文数据\数据\质量水平\2005产品加总.dta,replace
use E:\新论文数据\数据\产品年份汇总\2005数据加总前.dta,clear
merge m:1 hs6 using E:\新论文数据\数据\质量水平\2005产品加总.dta
drop _merge
drop if missing(t, hs6, hs1996, i ,j ,v ,q ,iso3 ,hs6iso3 ,sumv )
save E:\新论文数据\数据\质量水平\2005待合并.dta,replace

*2006年数据               //计算每种产品在世界上的出口总额 
use E:\新论文数据\数据\产品年份汇总\2006数据加总前.dta,clear
collapse (sum) v,by(hs6)    // 计算2006年产品分类加总
rename v sumv
save E:\新论文数据\数据\质量水平\2006产品加总.dta,replace
use E:\新论文数据\数据\产品年份汇总\2006数据加总前.dta,clear
merge m:1 hs6 using E:\新论文数据\数据\质量水平\2006产品加总.dta
drop _merge
drop if missing(t, hs6, hs1996, i ,j ,v ,q ,iso3 ,hs6iso3 ,sumv )
save E:\新论文数据\数据\质量水平\2006待合并.dta,replace

*2007年数据               //计算每种产品在世界上的出口总额 
use E:\新论文数据\数据\产品年份汇总\2007数据加总前.dta,clear
collapse (sum) v,by(hs6)    // 计算2007年产品分类加总
rename v sumv
save E:\新论文数据\数据\质量水平\2007产品加总.dta,replace
use E:\新论文数据\数据\产品年份汇总\2007数据加总前.dta,clear
merge m:1 hs6 using E:\新论文数据\数据\质量水平\2007产品加总.dta
drop _merge
drop if missing(t, hs6, hs1996, i ,j ,v ,q ,iso3 ,hs6iso3 ,sumv )
save E:\新论文数据\数据\质量水平\2007待合并.dta,replace

*2008年数据               //计算每种产品在世界上的出口总额 
use E:\新论文数据\数据\产品年份汇总\2008数据加总前.dta,clear
collapse (sum) v,by(hs6)    // 计算2008年产品分类加总
rename v sumv
save E:\新论文数据\数据\质量水平\2008产品加总.dta,replace
use E:\新论文数据\数据\产品年份汇总\2008数据加总前.dta,clear
merge m:1 hs6 using E:\新论文数据\数据\质量水平\2008产品加总.dta
drop _merge
drop if missing(t, hs6, hs1996, i ,j ,v ,q ,iso3 ,hs6iso3 ,sumv )
save E:\新论文数据\数据\质量水平\2008待合并.dta,replace

*2009年数据               //计算每种产品在世界上的出口总额 
use E:\新论文数据\数据\产品年份汇总\2009数据加总前.dta,clear
collapse (sum) v,by(hs6)    // 计算2009年产品分类加总
rename v sumv
save E:\新论文数据\数据\质量水平\2009产品加总.dta,replace
use E:\新论文数据\数据\产品年份汇总\2009数据加总前.dta,clear
merge m:1 hs6 using E:\新论文数据\数据\质量水平\2009产品加总.dta
drop _merge
drop if missing(t, hs6, hs1996, i ,j ,v ,q ,iso3 ,hs6iso3 ,sumv )
save E:\新论文数据\数据\质量水平\2009待合并.dta,replace

*2010年数据               //计算每种产品在世界上的出口总额 
use E:\新论文数据\数据\产品年份汇总\2010数据加总前.dta,clear
collapse (sum) v,by(hs6)    // 计算2010年产品分类加总
rename v sumv
save E:\新论文数据\数据\质量水平\2010产品加总.dta,replace
use E:\新论文数据\数据\产品年份汇总\2010数据加总前.dta,clear
merge m:1 hs6 using E:\新论文数据\数据\质量水平\2010产品加总.dta
drop _merge
drop if missing(t, hs6, hs1996, i ,j ,v ,q ,iso3 ,hs6iso3 ,sumv )
save E:\新论文数据\数据\质量水平\2010待合并.dta,replace

*2011年数据               //计算每种产品在世界上的出口总额 
use E:\新论文数据\数据\产品年份汇总\2011数据加总前.dta,clear
collapse (sum) v,by(hs6)    // 计算2011年产品分类加总
rename v sumv
save E:\新论文数据\数据\质量水平\2011产品加总.dta,replace
use E:\新论文数据\数据\产品年份汇总\2011数据加总前.dta,clear
merge m:1 hs6 using E:\新论文数据\数据\质量水平\2011产品加总.dta
drop _merge
drop if missing(t, hs6, hs1996, i ,j ,v ,q ,iso3 ,hs6iso3 ,sumv )
save E:\新论文数据\数据\质量水平\2011待合并.dta,replace

*2012年数据               //计算每种产品在世界上的出口总额 
use E:\新论文数据\数据\产品年份汇总\2012数据加总前.dta,clear
collapse (sum) v,by(hs6)    // 计算2012年产品分类加总
rename v sumv
save E:\新论文数据\数据\质量水平\2012产品加总.dta,replace
use E:\新论文数据\数据\产品年份汇总\2012数据加总前.dta,clear
merge m:1 hs6 using E:\新论文数据\数据\质量水平\2012产品加总.dta
drop _merge
drop if missing(t, hs6, hs1996, i ,j ,v ,q ,iso3 ,hs6iso3 ,sumv )
save E:\新论文数据\数据\质量水平\2012待合并.dta,replace

*2013年数据               //计算每种产品在世界上的出口总额 
use E:\新论文数据\数据\产品年份汇总\2013数据加总前.dta,clear
collapse (sum) v,by(hs6)    // 计算2013年产品分类加总
rename v sumv
save E:\新论文数据\数据\质量水平\2013产品加总.dta,replace
use E:\新论文数据\数据\产品年份汇总\2013数据加总前.dta,clear
merge m:1 hs6 using E:\新论文数据\数据\质量水平\2013产品加总.dta
drop _merge
drop if missing(t, hs6, hs1996, i ,j ,v ,q ,iso3 ,hs6iso3 ,sumv )
save E:\新论文数据\数据\质量水平\2013待合并.dta,replace

*2014年数据               //计算每种产品在世界上的出口总额 
use E:\新论文数据\数据\产品年份汇总\2014数据加总前.dta,clear
collapse (sum) v,by(hs6)    // 计算2014年产品分类加总
rename v sumv
save E:\新论文数据\数据\质量水平\2014产品加总.dta,replace
use E:\新论文数据\数据\产品年份汇总\2014数据加总前.dta,clear
merge m:1 hs6 using E:\新论文数据\数据\质量水平\2014产品加总.dta
drop _merge
drop if missing(t, hs6, hs1996, i ,j ,v ,q ,iso3 ,hs6iso3 ,sumv )
save E:\新论文数据\数据\质量水平\2014待合并.dta,replace






*处理2000年        //计算质量水平
use E:\新论文数据\数据\质量水平\2000待合并,clear
collapse (sum) v q,by(iso3 hs6)  //*合并价值和数量 
rename v allv
rename q allq
save E:\新论文数据\数据\质量水平\2000总量总价.dta,replace
merge m:1 hs6 using E:\新论文数据\数据\质量水平\2000产品加总.dta
drop _merge
*处理份额
gen share=allv/sumv
*处理单价
gen unitp=allv/allq
*处理份额*单价
gen sp=share*unitp
collapse (sum) sp ,by(hs6)  //*加总份额乘单价 
save E:\新论文数据\数据\质量水平\2000sharep.dta,replace
use E:\新论文数据\数据\质量水平\2000总量总价.dta,clear
encode iso3,gen (id)
keep if id==40              //保留中国产品
gen unitp=allv/allq
merge m:1 hs6 using E:\新论文数据\数据\质量水平\2000sharep.dta
gen qk=unitp/sp                  //计算产品质量水平
drop _merge
drop if qk==.
gen t=2000
save  E:\新论文数据\数据\质量水平\2000各产品质量水平.dta

*处理2001年        //计算质量水平
use E:\新论文数据\数据\质量水平\2001待合并,clear
collapse (sum) v q,by(iso3 hs6)  //*合并价值和数量 
rename v allv
rename q allq
save E:\新论文数据\数据\质量水平\2001总量总价.dta,replace
merge m:1 hs6 using E:\新论文数据\数据\质量水平\2001产品加总.dta
drop _merge
*处理份额
gen share=allv/sumv
*处理单价
gen unitp=allv/allq
*处理份额*单价
gen sp=share*unitp
collapse (sum) sp ,by(hs6)  //*加总份额乘单价 
save E:\新论文数据\数据\质量水平\2001sharep.dta,replace
use E:\新论文数据\数据\质量水平\2001总量总价.dta,clear
encode iso3,gen (id)
keep if id==40              //保留中国产品
gen unitp=allv/allq
merge m:1 hs6 using E:\新论文数据\数据\质量水平\2001sharep.dta
gen qk=unitp/sp                  //计算产品质量水平
drop _merge
drop if qk==.
gen t=2001
save  E:\新论文数据\数据\质量水平\2001各产品质量水平.dta

*处理2002年        //计算质量水平
use E:\新论文数据\数据\质量水平\2002待合并,clear
collapse (sum) v q,by(iso3 hs6)  //*合并价值和数量 
rename v allv
rename q allq
save E:\新论文数据\数据\质量水平\2002总量总价.dta,replace
merge m:1 hs6 using E:\新论文数据\数据\质量水平\2002产品加总.dta
drop _merge
*处理份额
gen share=allv/sumv
*处理单价
gen unitp=allv/allq
*处理份额*单价
gen sp=share*unitp
collapse (sum) sp ,by(hs6)  //*加总份额乘单价 
save E:\新论文数据\数据\质量水平\2002sharep.dta,replace
use E:\新论文数据\数据\质量水平\2002总量总价.dta,clear
encode iso3,gen (id)
keep if id==40              //保留中国产品
gen unitp=allv/allq
merge m:1 hs6 using E:\新论文数据\数据\质量水平\2002sharep.dta
gen qk=unitp/sp                  //计算产品质量水平
drop _merge
drop if qk==.
gen t=2002
save  E:\新论文数据\数据\质量水平\2002各产品质量水平.dta

*处理2003年        //计算质量水平
use E:\新论文数据\数据\质量水平\2003待合并,clear
collapse (sum) v q,by(iso3 hs6)  //*合并价值和数量 
rename v allv
rename q allq
save E:\新论文数据\数据\质量水平\2003总量总价.dta,replace
merge m:1 hs6 using E:\新论文数据\数据\质量水平\2003产品加总.dta
drop _merge
*处理份额
gen share=allv/sumv
*处理单价
gen unitp=allv/allq
*处理份额*单价
gen sp=share*unitp
collapse (sum) sp ,by(hs6)  //*加总份额乘单价 
save E:\新论文数据\数据\质量水平\2003sharep.dta,replace
use E:\新论文数据\数据\质量水平\2003总量总价.dta,clear
encode iso3,gen (id)
keep if id==40              //保留中国产品
gen unitp=allv/allq
merge m:1 hs6 using E:\新论文数据\数据\质量水平\2003sharep.dta
gen qk=unitp/sp                  //计算产品质量水平
drop _merge
drop if qk==.
gen t=2003
save  E:\新论文数据\数据\质量水平\2003各产品质量水平.dta

*处理2004年        //计算质量水平
use E:\新论文数据\数据\质量水平\2004待合并,clear
collapse (sum) v q,by(iso3 hs6)  //*合并价值和数量 
rename v allv
rename q allq
save E:\新论文数据\数据\质量水平\2004总量总价.dta,replace
merge m:1 hs6 using E:\新论文数据\数据\质量水平\2004产品加总.dta
drop _merge
*处理份额
gen share=allv/sumv
*处理单价
gen unitp=allv/allq
*处理份额*单价
gen sp=share*unitp
collapse (sum) sp ,by(hs6)  //*加总份额乘单价 
save E:\新论文数据\数据\质量水平\2004sharep.dta,replace
use E:\新论文数据\数据\质量水平\2004总量总价.dta,clear
encode iso3,gen (id)
keep if id==40              //保留中国产品
gen unitp=allv/allq
merge m:1 hs6 using E:\新论文数据\数据\质量水平\2004sharep.dta
gen qk=unitp/sp                  //计算产品质量水平
drop _merge
drop if qk==.
gen t=2004
save  E:\新论文数据\数据\质量水平\2004各产品质量水平.dta

*处理2005年        //计算质量水平
use E:\新论文数据\数据\质量水平\2005待合并,clear
collapse (sum) v q,by(iso3 hs6)  //*合并价值和数量 
rename v allv
rename q allq
save E:\新论文数据\数据\质量水平\2005总量总价.dta,replace
merge m:1 hs6 using E:\新论文数据\数据\质量水平\2005产品加总.dta
drop _merge
*处理份额
gen share=allv/sumv
*处理单价
gen unitp=allv/allq
*处理份额*单价
gen sp=share*unitp
collapse (sum) sp ,by(hs6)  //*加总份额乘单价 
save E:\新论文数据\数据\质量水平\2005sharep.dta,replace
use E:\新论文数据\数据\质量水平\2005总量总价.dta,clear
encode iso3,gen (id)
keep if id==40              //保留中国产品
gen unitp=allv/allq
merge m:1 hs6 using E:\新论文数据\数据\质量水平\2005sharep.dta
gen qk=unitp/sp                  //计算产品质量水平
drop _merge
drop if qk==.
gen t=2005
save  E:\新论文数据\数据\质量水平\2005各产品质量水平.dta

*处理2006年        //计算质量水平
use E:\新论文数据\数据\质量水平\2006待合并,clear
collapse (sum) v q,by(iso3 hs6)  //*合并价值和数量 
rename v allv
rename q allq
save E:\新论文数据\数据\质量水平\2006总量总价.dta,replace
merge m:1 hs6 using E:\新论文数据\数据\质量水平\2006产品加总.dta
drop _merge
*处理份额
gen share=allv/sumv
*处理单价
gen unitp=allv/allq
*处理份额*单价
gen sp=share*unitp
collapse (sum) sp ,by(hs6)  //*加总份额乘单价 
save E:\新论文数据\数据\质量水平\2006sharep.dta,replace
use E:\新论文数据\数据\质量水平\2006总量总价.dta,clear
encode iso3,gen (id)
keep if id==40              //保留中国产品
gen unitp=allv/allq
merge m:1 hs6 using E:\新论文数据\数据\质量水平\2006sharep.dta
gen qk=unitp/sp                  //计算产品质量水平
drop _merge
drop if qk==.
gen t=2006
save  E:\新论文数据\数据\质量水平\2006各产品质量水平.dta

*处理2007年        //计算质量水平
use E:\新论文数据\数据\质量水平\2007待合并,clear
collapse (sum) v q,by(iso3 hs6)  //*合并价值和数量 
rename v allv
rename q allq
save E:\新论文数据\数据\质量水平\2007总量总价.dta,replace
merge m:1 hs6 using E:\新论文数据\数据\质量水平\2007产品加总.dta
drop _merge
*处理份额
gen share=allv/sumv
*处理单价
gen unitp=allv/allq
*处理份额*单价
gen sp=share*unitp
collapse (sum) sp ,by(hs6)  //*加总份额乘单价 
save E:\新论文数据\数据\质量水平\2007sharep.dta,replace
use E:\新论文数据\数据\质量水平\2007总量总价.dta,clear
encode iso3,gen (id)
keep if id==40              //保留中国产品
gen unitp=allv/allq
merge m:1 hs6 using E:\新论文数据\数据\质量水平\2007sharep.dta
gen qk=unitp/sp                  //计算产品质量水平
drop _merge
drop if qk==.
gen t=2007
save  E:\新论文数据\数据\质量水平\2007各产品质量水平.dta

*处理2008年        //计算质量水平
use E:\新论文数据\数据\质量水平\2008待合并,clear
collapse (sum) v q,by(iso3 hs6)  //*合并价值和数量 
rename v allv
rename q allq
save E:\新论文数据\数据\质量水平\2008总量总价.dta,replace
merge m:1 hs6 using E:\新论文数据\数据\质量水平\2008产品加总.dta
drop _merge
*处理份额
gen share=allv/sumv
*处理单价
gen unitp=allv/allq
*处理份额*单价
gen sp=share*unitp
collapse (sum) sp ,by(hs6)  //*加总份额乘单价 
save E:\新论文数据\数据\质量水平\2008sharep.dta,replace
use E:\新论文数据\数据\质量水平\2008总量总价.dta,clear
encode iso3,gen (id)
keep if id==40              //保留中国产品
gen unitp=allv/allq
merge m:1 hs6 using E:\新论文数据\数据\质量水平\2008sharep.dta
gen qk=unitp/sp                  //计算产品质量水平
drop _merge
drop if qk==.
gen t=2008
save  E:\新论文数据\数据\质量水平\2008各产品质量水平.dta

*处理2009年        //计算质量水平
use E:\新论文数据\数据\质量水平\2009待合并,clear
collapse (sum) v q,by(iso3 hs6)  //*合并价值和数量 
rename v allv
rename q allq
save E:\新论文数据\数据\质量水平\2009总量总价.dta,replace
merge m:1 hs6 using E:\新论文数据\数据\质量水平\2009产品加总.dta
drop _merge
*处理份额
gen share=allv/sumv
*处理单价
gen unitp=allv/allq
*处理份额*单价
gen sp=share*unitp
collapse (sum) sp ,by(hs6)  //*加总份额乘单价 
save E:\新论文数据\数据\质量水平\2009sharep.dta,replace
use E:\新论文数据\数据\质量水平\2009总量总价.dta,clear
encode iso3,gen (id)
keep if id==40              //保留中国产品
gen unitp=allv/allq
merge m:1 hs6 using E:\新论文数据\数据\质量水平\2009sharep.dta
gen qk=unitp/sp                  //计算产品质量水平
drop _merge
drop if qk==.
gen t=2009
save  E:\新论文数据\数据\质量水平\2009各产品质量水平.dta

*处理2010年        //计算质量水平
use E:\新论文数据\数据\质量水平\2010待合并,clear
collapse (sum) v q,by(iso3 hs6)  //*合并价值和数量 
rename v allv
rename q allq
save E:\新论文数据\数据\质量水平\2010总量总价.dta,replace
merge m:1 hs6 using E:\新论文数据\数据\质量水平\2010产品加总.dta
drop _merge
*处理份额
gen share=allv/sumv
*处理单价
gen unitp=allv/allq
*处理份额*单价
gen sp=share*unitp
collapse (sum) sp ,by(hs6)  //*加总份额乘单价 
save E:\新论文数据\数据\质量水平\2010sharep.dta,replace
use E:\新论文数据\数据\质量水平\2010总量总价.dta,clear
encode iso3,gen (id)
keep if id==40              //保留中国产品
gen unitp=allv/allq
merge m:1 hs6 using E:\新论文数据\数据\质量水平\2010sharep.dta
gen qk=unitp/sp                  //计算产品质量水平
drop _merge
drop if qk==.
gen t=2010
save  E:\新论文数据\数据\质量水平\2010各产品质量水平.dta

*处理2011年        //计算质量水平
use E:\新论文数据\数据\质量水平\2011待合并,clear
collapse (sum) v q,by(iso3 hs6)  //*合并价值和数量 
rename v allv
rename q allq
save E:\新论文数据\数据\质量水平\2011总量总价.dta,replace
merge m:1 hs6 using E:\新论文数据\数据\质量水平\2011产品加总.dta
drop _merge
*处理份额
gen share=allv/sumv
*处理单价
gen unitp=allv/allq
*处理份额*单价
gen sp=share*unitp
collapse (sum) sp ,by(hs6)  //*加总份额乘单价 
save E:\新论文数据\数据\质量水平\2011sharep.dta,replace
use E:\新论文数据\数据\质量水平\2011总量总价.dta,clear
encode iso3,gen (id)
keep if id==40              //保留中国产品
gen unitp=allv/allq
merge m:1 hs6 using E:\新论文数据\数据\质量水平\2011sharep.dta
gen qk=unitp/sp                  //计算产品质量水平
drop _merge
drop if qk==.
gen t=2011
save  E:\新论文数据\数据\质量水平\2011各产品质量水平.dta

*处理2012年        //计算质量水平
use E:\新论文数据\数据\质量水平\2012待合并,clear
collapse (sum) v q,by(iso3 hs6)  //*合并价值和数量 
rename v allv
rename q allq
save E:\新论文数据\数据\质量水平\2012总量总价.dta,replace
merge m:1 hs6 using E:\新论文数据\数据\质量水平\2012产品加总.dta
drop _merge
*处理份额
gen share=allv/sumv
*处理单价
gen unitp=allv/allq
*处理份额*单价
gen sp=share*unitp
collapse (sum) sp ,by(hs6)  //*加总份额乘单价 
save E:\新论文数据\数据\质量水平\2012sharep.dta,replace
use E:\新论文数据\数据\质量水平\2012总量总价.dta,clear
encode iso3,gen (id)
keep if id==40              //保留中国产品
gen unitp=allv/allq
merge m:1 hs6 using E:\新论文数据\数据\质量水平\2012sharep.dta
gen qk=unitp/sp                  //计算产品质量水平
drop _merge
drop if qk==.
gen t=2012
save  E:\新论文数据\数据\质量水平\2012各产品质量水平.dta

*处理2013年        //计算质量水平
use E:\新论文数据\数据\质量水平\2013待合并,clear
collapse (sum) v q,by(iso3 hs6)  //*合并价值和数量 
rename v allv
rename q allq
save E:\新论文数据\数据\质量水平\2013总量总价.dta,replace
merge m:1 hs6 using E:\新论文数据\数据\质量水平\2013产品加总.dta
drop _merge
*处理份额
gen share=allv/sumv
*处理单价
gen unitp=allv/allq
*处理份额*单价
gen sp=share*unitp
collapse (sum) sp ,by(hs6)  //*加总份额乘单价 
save E:\新论文数据\数据\质量水平\2013sharep.dta,replace
use E:\新论文数据\数据\质量水平\2013总量总价.dta,clear
encode iso3,gen (id)
keep if id==40              //保留中国产品
gen unitp=allv/allq
merge m:1 hs6 using E:\新论文数据\数据\质量水平\2013sharep.dta
gen qk=unitp/sp                  //计算产品质量水平
drop _merge
drop if qk==.
gen t=2013
save  E:\新论文数据\数据\质量水平\2013各产品质量水平.dta

*处理2014年        //计算质量水平
use E:\新论文数据\数据\质量水平\2014待合并,clear
collapse (sum) v q,by(iso3 hs6)  //*合并价值和数量 
rename v allv
rename q allq
save E:\新论文数据\数据\质量水平\2014总量总价.dta,replace
merge m:1 hs6 using E:\新论文数据\数据\质量水平\2014产品加总.dta
drop _merge
*处理份额
gen share=allv/sumv
*处理单价
gen unitp=allv/allq
*处理份额*单价
gen sp=share*unitp
collapse (sum) sp ,by(hs6)  //*加总份额乘单价 
save E:\新论文数据\数据\质量水平\2014sharep.dta,replace
use E:\新论文数据\数据\质量水平\2014总量总价.dta,clear
encode iso3,gen (id)
keep if id==40              //保留中国产品
gen unitp=allv/allq
merge m:1 hs6 using E:\新论文数据\数据\质量水平\2014sharep.dta
gen qk=unitp/sp                  //计算产品质量水平
drop _merge
drop if qk==.
gen t=2014
save  E:\新论文数据\数据\质量水平\2014各产品质量水平.dta


*合并1998-2011 数据
use  E:\新论文数据\数据\质量水平\2000各产品质量水平.dta,clear
 append using E:\新论文数据\数据\质量水平\2001各产品质量水平.dta
 append using E:\新论文数据\数据\质量水平\2002各产品质量水平.dta
 append using E:\新论文数据\数据\质量水平\2003各产品质量水平.dta
 append using E:\新论文数据\数据\质量水平\2004各产品质量水平.dta
 append using E:\新论文数据\数据\质量水平\2005各产品质量水平.dta
 append using E:\新论文数据\数据\质量水平\2006各产品质量水平.dta
 append using E:\新论文数据\数据\质量水平\2007各产品质量水平.dta
 append using E:\新论文数据\数据\质量水平\2008各产品质量水平.dta
 append using E:\新论文数据\数据\质量水平\2009各产品质量水平.dta
 append using E:\新论文数据\数据\质量水平\2010各产品质量水平.dta
 append using E:\新论文数据\数据\质量水平\2011各产品质量水平.dta
 append using E:\新论文数据\数据\质量水平\2012各产品质量水平.dta
 append using E:\新论文数据\数据\质量水平\2013各产品质量水平.dta
 append using E:\新论文数据\数据\质量水平\2014各产品质量水平.dta
drop allv allq sp unitp
save E:\新论文数据\数据\质量水平\2000到2014年质量水平.dta


*2.匹配VSS和产品质量

use E:\新论文数据\数据\技术复杂度\产品层面技术复杂度.dta,clear //匹配质量和VSS
rename hs6 hs96
merge n:1 hs96 using E:\新论文数据\数据\数据匹配\hs96io1.dta
drop _merge
merge n:1 io year using E:\新论文数据\数据\VSS\VSS.dta   //匹配产品VSS水平
drop _merge
rename hs96 hs6
rename year t
merge n:1 hs6 t using E:\新论文数据\数据\质量水平\2000到2014年质量水平.dta //匹配产品质量
drop if missing( vss ,qk) 
drop if ss == 2
drop ss
drop _merge


*计算国内技术复杂度产品层面

gen newprody =((qk)^0.2)*(1-vss)*(prody)
save E:\新论文数据\数据\技术复杂度\产品层面技术复杂度国内.dta,replace

*计算全部和国内技术复杂度国家层面
use E:\新论文数据\数据\技术复杂度\技术复杂的基础数据.dta,clear 
encode id ,gen(export)
keep if export == 39
rename year t 
drop id 
merge n:1 t hs6 using E:\新论文数据\数据\技术复杂度\产品层面技术复杂度国内.dta
drop _merge
gen expy =x*prody
gen newexpy =x*newprody
collapse (sum) expy newexpy,by( t)
save E:\新论文数据\数据\技术复杂度\全部和国内技术复杂度国家层面.dta

use E:\新论文数据\数据\技术复杂度\全部和国内技术复杂度国家层面.dta,clear




*三、处理出口持续时间*

use E:\新论文数据\数据\产品年份汇总\2000数据加总前.dta,clear
encode iso3 ,gen(id)
drop if id != 40
drop iso3 q hs6iso3
save E:\新论文数据\数据\出口持续时间\2000年中国出口数据.dta

use E:\新论文数据\数据\产品年份汇总\2001数据加总前.dta,clear
encode iso3 ,gen(id)
drop if id != 40
drop iso3 q hs6iso3
save E:\新论文数据\数据\出口持续时间\2001年中国出口数据.dta

use E:\新论文数据\数据\产品年份汇总\2002数据加总前.dta,clear
encode iso3 ,gen(id)
drop if id != 40
drop iso3 q hs6iso3
save E:\新论文数据\数据\出口持续时间\2002年中国出口数据.dta

use E:\新论文数据\数据\产品年份汇总\2003数据加总前.dta,clear
encode iso3 ,gen(id)
drop if id != 40
drop iso3 q hs6iso3
save E:\新论文数据\数据\出口持续时间\2003年中国出口数据.dta

use E:\新论文数据\数据\产品年份汇总\2004数据加总前.dta,clear
encode iso3 ,gen(id)
drop if id != 40
drop iso3 q hs6iso3
save E:\新论文数据\数据\出口持续时间\2004年中国出口数据.dta

use E:\新论文数据\数据\产品年份汇总\2005数据加总前.dta,clear
encode iso3 ,gen(id)
drop if id != 40
drop iso3 q hs6iso3
save E:\新论文数据\数据\出口持续时间\2005年中国出口数据.dta

use E:\新论文数据\数据\产品年份汇总\2006数据加总前.dta,clear
encode iso3 ,gen(id)
drop if id != 40
drop iso3 q hs6iso3
save E:\新论文数据\数据\出口持续时间\2006年中国出口数据.dta

use E:\新论文数据\数据\产品年份汇总\2007数据加总前.dta,clear
encode iso3 ,gen(id)
drop if id != 40
drop iso3 q hs6iso3
save E:\新论文数据\数据\出口持续时间\2007年中国出口数据.dta

use E:\新论文数据\数据\产品年份汇总\2008数据加总前.dta,clear
encode iso3 ,gen(id)
drop if id != 40
drop iso3 q hs6iso3
save E:\新论文数据\数据\出口持续时间\2008年中国出口数据.dta

use E:\新论文数据\数据\产品年份汇总\2009数据加总前.dta,clear
encode iso3 ,gen(id)
drop if id != 40
drop iso3 q hs6iso3
save E:\新论文数据\数据\出口持续时间\2009年中国出口数据.dta

use E:\新论文数据\数据\产品年份汇总\2010数据加总前.dta,clear
encode iso3 ,gen(id)
drop if id != 40
drop iso3 q hs6iso3
save E:\新论文数据\数据\出口持续时间\2010年中国出口数据.dta

use E:\新论文数据\数据\产品年份汇总\2011数据加总前.dta,clear
encode iso3 ,gen(id)
drop if id != 40
drop iso3 q hs6iso3
save E:\新论文数据\数据\出口持续时间\2011年中国出口数据.dta

use E:\新论文数据\数据\产品年份汇总\2012数据加总前.dta,clear
encode iso3 ,gen(id)
drop if id != 40
drop iso3 q hs6iso3
save E:\新论文数据\数据\出口持续时间\2012年中国出口数据.dta

use E:\新论文数据\数据\产品年份汇总\2013数据加总前.dta,clear
encode iso3 ,gen(id)
drop if id != 40
drop iso3 q hs6iso3
save E:\新论文数据\数据\出口持续时间\2013年中国出口数据.dta

use E:\新论文数据\数据\产品年份汇总\2014数据加总前.dta,clear
encode iso3 ,gen(id)
drop if id != 40
drop iso3 q hs6iso3
save E:\新论文数据\数据\出口持续时间\2014年中国出口数据.dta

*汇总

use  E:\新论文数据\数据\出口持续时间\2000年中国出口数据.dta,clear
append using E:\新论文数据\数据\出口持续时间\2001年中国出口数据.dta
append using E:\新论文数据\数据\出口持续时间\2002年中国出口数据.dta
append using E:\新论文数据\数据\出口持续时间\2003年中国出口数据.dta
append using E:\新论文数据\数据\出口持续时间\2004年中国出口数据.dta
append using E:\新论文数据\数据\出口持续时间\2005年中国出口数据.dta
append using E:\新论文数据\数据\出口持续时间\2006年中国出口数据.dta
append using E:\新论文数据\数据\出口持续时间\2007年中国出口数据.dta
append using E:\新论文数据\数据\出口持续时间\2008年中国出口数据.dta
append using E:\新论文数据\数据\出口持续时间\2009年中国出口数据.dta
append using E:\新论文数据\数据\出口持续时间\2010年中国出口数据.dta
append using E:\新论文数据\数据\出口持续时间\2011年中国出口数据.dta
append using E:\新论文数据\数据\出口持续时间\2012年中国出口数据.dta
append using E:\新论文数据\数据\出口持续时间\2013年中国出口数据.dta
append using E:\新论文数据\数据\出口持续时间\2014年中国出口数据.dta

save E:\新论文数据\数据\出口持续时间\2000-2014年中国出口数据.dta,replace

*匹配目的地和产品种类

use E:\新论文数据\数据\出口持续时间\2000-2014年中国出口数据.dta,clear
merge n:n hs1996 using E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\数据合并\分类匹配.dta   //匹配ISIC分类
drop _merge
merge n:n j using E:\新论文数据\数据\数据匹配\国家匹配.dta
drop _merge
rename imper iso3
merge n:1 iso3 using E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\数据合并\收入组.dta 
drop _merge
merge n:1 isic2 using E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\数据合并\OECD产品分类.dta
drop _merge
gen impotergoods=iso3+hs6
encode impotergoods,gen(importgood)
drop j 
save  E:\新论文数据\数据\出口持续时间\生存分析.dta,replace


*处理生存分析解释变量
use E:\新论文数据\数据\出口持续时间\生存分析.dta,clear
drop if v == .
duplicates drop impotergood t, force
xtset impotergood t
encode iso3,gen(ss)
drop if ss == .
drop if ss == 1
drop ss
*左删除处理
gen t1=F.t
drop if t == 2000  & t1 == .  //删除2000年出口

gen t2=F.t1
drop if t == 2000  & t1 == 2001 & t2 ==.  //删除2000-2001年出口

gen t3=F.t2
drop if t == 2000  & t1 == 2001 & t2 ==2002 & t3 ==.  //删除2000-2002年出口

gen t4=F.t3
drop if t == 2000  & t1 == 2001 & t2 ==2002 & t3 ==2003 & t4== .  //删除2000-2003年出口

gen t5=F.t4
drop if t == 2000  & t1 == 2001 & t2 ==2002 & t3 ==2003 & t4== 2004 & t5== .  //删除2000-2004年出口

gen t6=F.t5
drop if t == 2000  & t1 == 2001 & t2 ==2002 & t3 ==2003 & t4== 2004 & t5== 2005 & t6==.  //删除2000-2005年出口

gen t7=F.t6
drop if t == 2000  & t1 == 2001 & t2 ==2002 & t3 ==2003 & t4== 2004 & t5== 2005 & t6==2006 & t7 ==.   //删除2000-2006年出口

gen t8=F.t7
drop if t == 2000  & t1 == 2001 & t2 ==2002 & t3 ==2003 & t4== 2004 & t5== 2005 & t6==2006 & t7 ==2007 &t8 ==.   //删除2000-2007年出口

gen t9=F.t8
drop if t == 2000  & t1 == 2001 & t2 ==2002 & t3 ==2003 & t4== 2004 & t5== 2005 & t6==2006 & t7 ==2007 &t8 ==2008 & t9 ==.   //删除2000-2008年出口

gen t10=F.t9
drop if t == 2000  & t1 == 2001 & t2 ==2002 & t3 ==2003 & t4== 2004 & t5== 2005 & t6==2006 & t7 ==2007 &t8 ==2008 & t9 ==2009 & t10 ==.   //删除2000-2009年出口

gen t11=F.t10
drop if t == 2000  & t1 == 2001 & t2 ==2002 & t3 ==2003 & t4== 2004 & t5== 2005 & t6==2006 & t7 ==2007 &t8 ==2008 & t9 ==2009 & t10 ==2010 & t11 ==.  //删除2000-2010年出口

gen t12=F.t11
drop if t == 2000  & t1 == 2001 & t2 ==2002 & t3 ==2003 & t4== 2004 & t5== 2005 & t6==2006 & t7 ==2007 &t8 ==2008 & t9 ==2009 & t10 ==2010 & t11 ==2011 & t12 == .  //删除2000-2011年出口

gen t13=F.t12
drop if t == 2000  & t1 == 2001 & t2 ==2002 & t3 ==2003 & t4== 2004 & t5== 2005 & t6==2006 & t7 ==2007 &t8 ==2008 & t9 ==2009 & t10 ==2010 & t11 ==2011 & t12 == 2012 & t13 ==.  //删除2000-2012年出口

gen t14=F.t13
drop if t == 2000  & t1 == 2001 & t2 ==2002 & t3 ==2003 & t4== 2004 & t5== 2005 & t6==2006 & t7 ==2007 &t8 ==2008 & t9 ==2009 & t10 ==2010 & t11 ==2011 & t12 == 2012 & t13 ==2013 & t14 ==.  //删除2000-2013年出口

gen t15=F.t14
drop if t == 2000  & t1 == 2001 & t2 ==2002 & t3 ==2003 & t4== 2004 & t5== 2005 & t6==2006 & t7 ==2007 &t8 ==2008 & t9 ==2009 & t10 ==2010 & t11 ==2011 & t12 == 2012 & t13 ==2013 & t14 ==2014  & t15 ==.  //删除2000-2014年出口
drop t1-t15
save E:\新论文数据\数据\出口持续时间\左删除.dta,replace

*计算出口的持续时间年份
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

save E:\新论文数据\数据\出口持续时间\左删除有出口的持续时间.dta,replace

*四、处理回归数据



*1、匹配产品的价格
*计算单位价值

use E:\新论文数据\数据\产品年份汇总\2000数据加总前.dta,clear
gen unitp=v/q
keep if i == 156
drop i 
rename j i
merge n:n i using 国家匹配.dta ,update replace          //匹配国家
gen impotergoods=iso3+hs6
drop _merge
save E:\新论文数据\数据\产品年份汇总\2000代单价.dta，replace

use E:\新论文数据\数据\产品年份汇总\2001数据加总前.dta,clear
gen unitp=v/q
keep if i == 156
drop i 
rename j i
merge n:n i using 国家匹配.dta ,update replace          //匹配国家
gen impotergoods=iso3+hs6
drop _merge
save E:\新论文数据\数据\产品年份汇总\2001代单价.dta

use E:\新论文数据\数据\产品年份汇总\2002数据加总前.dta
gen unitp=v/q
keep if i == 156
drop i 
rename j i
merge n:n i using 国家匹配.dta ,update replace          //匹配国家
gen impotergoods=iso3+hs6
drop _merge
save E:\新论文数据\数据\产品年份汇总\2002代单价.dta

use E:\新论文数据\数据\产品年份汇总\2003数据加总前.dta,clear
gen unitp=v/q
keep if i == 156
drop i 
rename j i
merge n:n i using 国家匹配.dta ,update replace          //匹配国家
gen impotergoods=iso3+hs6
drop _merge
save E:\新论文数据\数据\产品年份汇总\2003代单价.dta

use E:\新论文数据\数据\产品年份汇总\2004数据加总前.dta,clear
gen unitp=v/q
keep if i == 156
drop i 
rename j i
merge n:n i using 国家匹配.dta ,update replace          //匹配国家
gen impotergoods=iso3+hs6
drop _merge
save E:\新论文数据\数据\产品年份汇总\2004代单价.dta

use E:\新论文数据\数据\产品年份汇总\2005数据加总前.dta,clear
gen unitp=v/q
keep if i == 156
drop i 
rename j i
merge n:n i using 国家匹配.dta ,update replace          //匹配国家
gen impotergoods=iso3+hs6
drop _merge
save E:\新论文数据\数据\产品年份汇总\2005代单价.dta

use E:\新论文数据\数据\产品年份汇总\2006数据加总前.dta,clear
gen unitp=v/q
keep if i == 156
drop i 
rename j i
merge n:n i using 国家匹配.dta ,update replace          //匹配国家
gen impotergoods=iso3+hs6
drop _merge
save E:\新论文数据\数据\产品年份汇总\2006代单价.dta

use E:\新论文数据\数据\产品年份汇总\2007数据加总前.dta,clear
gen unitp=v/q
keep if i == 156
drop i 
rename j i
merge n:n i using 国家匹配.dta ,update replace          //匹配国家
gen impotergoods=iso3+hs6
drop _merge
save E:\新论文数据\数据\产品年份汇总\2007代单价.dta

use E:\新论文数据\数据\产品年份汇总\2008数据加总前.dta,clear
gen unitp=v/q
keep if i == 156
drop i 
rename j i
merge n:n i using 国家匹配.dta ,update replace          //匹配国家
gen impotergoods=iso3+hs6
drop _merge
save E:\新论文数据\数据\产品年份汇总\2008代单价.dta

use E:\新论文数据\数据\产品年份汇总\2009数据加总前.dta,clear
gen unitp=v/q
keep if i == 156
drop i 
rename j i
merge n:n i using 国家匹配.dta ,update replace          //匹配国家
gen impotergoods=iso3+hs6
drop _merge
save E:\新论文数据\数据\产品年份汇总\2009代单价.dta

use E:\新论文数据\数据\产品年份汇总\2010数据加总前.dta,clear
gen unitp=v/q
keep if i == 156
drop i 
rename j i
merge n:n i using 国家匹配.dta ,update replace          //匹配国家
gen impotergoods=iso3+hs6
drop _merge
save E:\新论文数据\数据\产品年份汇总\2010代单价.dta

use E:\新论文数据\数据\产品年份汇总\2011数据加总前.dta,clear
gen unitp=v/q
keep if i == 156
drop i 
rename j i
merge n:n i using 国家匹配.dta ,update replace          //匹配国家
gen impotergoods=iso3+hs6
drop _merge
save E:\新论文数据\数据\产品年份汇总\2011代单价.dta

use E:\新论文数据\数据\产品年份汇总\2012数据加总前.dta,clear
gen unitp=v/q
keep if i == 156
drop i 
rename j i
merge n:n i using 国家匹配.dta ,update replace          //匹配国家
gen impotergoods=iso3+hs6
drop _merge
save E:\新论文数据\数据\产品年份汇总\2012代单价.dta

use E:\新论文数据\数据\产品年份汇总\2013数据加总前.dta,clear
gen unitp=v/q
keep if i == 156
drop i 
rename j i
merge n:n i using 国家匹配.dta ,update replace          //匹配国家
gen impotergoods=iso3+hs6
drop _merge
save E:\新论文数据\数据\产品年份汇总\2013代单价.dta

use E:\新论文数据\数据\产品年份汇总\2014数据加总前.dta,clear
gen unitp=v/q
keep if i == 156
drop i 
rename j i
merge n:n i using 国家匹配.dta ,update replace          //匹配国家
gen impotergoods=iso3+hs6
drop _merge
save E:\新论文数据\数据\产品年份汇总\2014代单价.dta

use E:\新论文数据\数据\产品年份汇总\2000代单价.dta,clear
append using  E:\新论文数据\数据\产品年份汇总\2001代单价.dta
append using  E:\新论文数据\数据\产品年份汇总\2002代单价.dta
append using  E:\新论文数据\数据\产品年份汇总\2003代单价.dta
append using  E:\新论文数据\数据\产品年份汇总\2004代单价.dta
append using  E:\新论文数据\数据\产品年份汇总\2005代单价.dta
append using  E:\新论文数据\数据\产品年份汇总\2006代单价.dta
append using  E:\新论文数据\数据\产品年份汇总\2007代单价.dta
append using  E:\新论文数据\数据\产品年份汇总\2008代单价.dta
append using  E:\新论文数据\数据\产品年份汇总\2009代单价.dta
append using  E:\新论文数据\数据\产品年份汇总\2010代单价.dta
append using  E:\新论文数据\数据\产品年份汇总\2011代单价.dta
append using  E:\新论文数据\数据\产品年份汇总\2012代单价.dta
append using  E:\新论文数据\数据\产品年份汇总\2013代单价.dta
append using  E:\新论文数据\数据\产品年份汇总\2014代单价.dta

save E:\新论文数据\数据\产品年份汇总\2000-2014单价.dta

use E:\新论文数据\数据\出口持续时间\左删除有出口的持续时间.dta,clear

merge n:n t impotergoods using E:\新论文数据\数据\产品年份汇总\2000-2014单价.dta
drop hs6iso3 _merge
drop if duration == .

*2、匹配出口产品的国内技术复杂度
merge n:1 t hs6 using E:\新论文数据\数据\技术复杂度\产品层面技术复杂度国内.dta
drop _merge qk io gbt 
drop if newprody == .
drop if duration ==.

save E:\新论文数据\数据\回归数据\回归数据.dta

*3、匹配行业规模
use E:\新论文数据\数据\回归数据\回归数据.dta,clear
collapse (sum) v ,by(t isic2)
rename v scale
save E:\新论文数据\数据\行业规模\行业规模.dta,replace

use E:\新论文数据\数据\回归数据\回归数据.dta,clear
merge n:1 isic2 t using E:\新论文数据\数据\行业规模\行业规模.dta
drop _merge

*4、匹配出口额
rename v exports

*5、匹配制度质量
merge n:1 t using E:\新论文数据\数据\制度质量\制度质量.dta 
drop _merge

*6、匹配贸易开放度
merge n:1 t using E:\新论文数据\数据\open\open.dta 
drop _merge

*7、匹配人力资本
merge n:1 t using E:\新论文数据\数据\人力资本\人力资本.dta 
drop _merge 

*8、匹配基础设施
merge n:1 t using E:\新论文数据\数据\基础设施\基础设施.dta 
drop _merge 

*9、匹配FDI
merge n:1 t using E:\新论文数据\数据\fdi\fdi.dta 
drop _merge

*10、匹配金融发展
merge n:1 t using E:\新论文数据\数据\fdi\fin.dta 
drop _merge

*11、匹配fta
merge n:1 t  iso3 using E:\新论文数据\数据\fdi\fta.dta 
drop _merge
replace fta = 0 if fta == .

*12、匹配gdp
merge n:1 t using E:\新论文数据\数据\fdi\gdp.dta 
drop _merge

*13、匹配因特网使用率
merge n:1 t using E:\新论文数据\数据\fdi\inter.dta 
drop _merge

*13、匹配宽带
merge n:1 t using E:\新论文数据\数据\fdi\kuandai.dta 
drop _merge

*14、匹配研发
merge n:1 t using E:\新论文数据\数据\fdi\yanfa.dta 
drop _merge

*15、匹配固定资本形成额
merge n:1 t using E:\新论文数据\数据\fdi\ziben.dta 
drop _merge

*16、匹配专利
merge n:1 t using E:\新论文数据\数据\fdi\zhuanli.dta 
drop _merge

*17、研发人员
merge n:1 t using E:\新论文数据\数据\fdi\yanfareny.dta 
drop _merge

*18、私人部门提供的信贷
merge n:1 t using E:\新论文数据\数据\fdi\private.dta 
drop _merge

*19、商业自由度和贸易自由度
merge n:1 t using E:\新论文数据\数据\fdi\bustra.dta 
drop _merge



drop if hs1996 == .
save E:\新论文数据\数据\回归数据\回归数据总.dta,replace



*五、回归
use E:\新论文数据\数据\回归数据\回归数据总.dta,clear
gen lnnewprody =ln(newprody)
gen lnscale =ln(scale )
gen lnzhiliang =ln(zhiliang )
gen lnhamcap =ln(hamcap)
gen lnfdi =ln( fdi)
gen lnvs =ln( vs*100)
gen lnopen =ln(open1 )
gen lnduration =ln(duration+2.7 )
gen lnexport=ln(exports)
gen lnunit=ln(unitp)
gen lnfin =ln(fin )
gen lngdp =ln( gdp)
gen lninter =ln(inter )
gen lnkuandai =ln(kuandai )
gen lnyanfa =ln(yan+1 )
gen lnziben  =ln(ziben  )
gen lnzhuanli  =ln( zhuanli )
gen lnyanfaren  =ln(yanfaren  )
gen lnprivate =ln(private  )
gen lnbusinessfreedom  = ln(businessfreedom  )
gen lntradefreedom =ln( tradefreedom)
drop  duration 
save E:\新论文数据\数据\回归数据\回归所有变量.dta,replace
d
duplicates drop impotergood t,force
xtset impotergood t

*判断固定效应还是随机效应
xtreg lnnewprody lnduration lnunit lnvs  fta lnbusinessfreedom lntradefreedom if ins == 1,re 
est store m_re
xtreg newprody duration unit vs  fta businessfreedom tradefreedom if ins == 1,fe 
est store m_fe
hausman m_fe m_re   //选择固定效应

*总回归
use  E:\新论文数据\数据\回归数据\回归所有变量.dta,clear
duplicates drop impotergood t,force
xtset impotergood t


use  E:\新论文数据\数据\回归数据\回归所有变量.dta,clear
tostring t,replace
gen idd = impotergoods + t
merge n:1 idd using E:\新论文数据\idd.dta 
keep  if _merge == 3
destring t ,gen(year)
duplicates drop impotergood year,force
xtset impotergood year


******************回归***************
*第一个回归
*fe
xtreg lnnewprody lnduration lnunit lnvs  fta lnhamcap lnopen ,fe 
est store m1
*re
xtreg lnnewprody lnduration lnunit lnvs  fta lnhamcap lnopen ,re
est store m2
*2SLS
ivreg2 lnnewprody (lnduration=L.lnduration ) lnunit lnvs  fta lnhamcap lnopen ,gmm2s robust
est store m3
outreg2 [m1  m2 m3 ] using 11组回归.xls,replace

*第二组回归

*高收入国家
xtreg lnnewprody lnduration lnunit lnvs  fta lnhamcap lnopen if ins == 1,fe 
est store m11
ivreg2 lnnewprody (lnduration=L.lnduration) lnunit lnvs  fta lnhamcap lnopen if ins == 1,gmm2s robust
est store m12

*中收入国家
xtreg lnnewprody lnduration lnunit lnvs  fta lnhamcap lnopen if ins == 3 | ins == 4,fe 
est store m13
ivreg2 lnnewprody (lnduration=L.lnduration) lnunit lnvs  fta lnhamcap lnopen if ins == 3 | ins == 4,gmm2s robust
est store m14

*低收入国家
xtreg lnnewprody lnduration lnunit lnvs  fta lnhamcap lnopen if ins == 2,fe 
est store m15
ivreg2 lnnewprody (lnduration=L.lnduration) lnunit lnvs  fta lnhamcap lnopen if ins == 2,gmm2s robust
est store m16

outreg2 [m11  m12 m13  m14 m15  m16] using 第二组.xls,replace

*第三组回归
*高技术
xtreg lnnewprody lnduration lnunit lnvs  fta lnhamcap lnopen if isictype == 1,fe 
est store m21
ivreg2 lnnewprody (lnduration=L.lnduration) lnunit lnvs  fta lnhamcap lnopen if isictype == 1,gmm2s robust
est store m22

*中技术
xtreg lnnewprody lnduration lnunit lnvs  fta lnhamcap lnopen if isictype == 2,fe 
est store m23
ivreg2 lnnewprody (lnduration=L.lnduration) lnunit lnvs  fta lnhamcap lnopen if isictype == 2,gmm2s robust
est store m24

*低低技术
xtreg lnnewprody lnduration lnunit lnvs  fta lnhamcap lnopen if isictype == 3,fe 
est store m25
ivreg2 lnnewprody (lnduration=L.lnduration) lnunit lnvs  fta lnhamcap lnopen if isictype == 3,gmm2s robust
est store m26

outreg2 [m21  m22 m23  m24 m25  m26] using 第三组.xls,replace

*第四组回归
*右删除
*进行右删除处理
ivreg2 lnnewprody (lnduration=L.lnduration) lnunit lnvs  fta lnhamcap lnopen ,gmm2s robust
est store m41
outreg2 [m41] using 第41.xls,replace

*删除第一个持续期
use  E:\新论文数据\数据\回归数据\回归所有变量.dta,clear
tostring t,replace
gen idd = impotergoods + t
merge n:1 idd using E:\新论文数据\idd.dta 
drop  if _merge == 3
destring t ,gen(year)
duplicates drop impotergood year,force
xtset impotergood year
*进行右删除处理
*fe
xtreg lnnewprody lnduration lnunit lnvs  fta lnhamcap lnopen ,fe 
est store m42
*re
xtreg lnnewprody lnduration lnunit lnvs  fta lnhamcap lnopen ,re
est store m43
*2SLS
ivreg2 lnnewprody (lnduration=L.lnduration ) lnunit lnvs  fta lnhamcap lnopen ,gmm2s robust
est store m44
outreg2 [m42  m43 m44 ] using 42组回归.xls,replace



