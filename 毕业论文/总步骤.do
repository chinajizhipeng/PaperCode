*一、合并数据
clear			
insheet using E:\数据资料\CEPII数据\HS96\baci96_2000.csv
save E:\论文毕业设计\数据\dta\2000.dta,replace
clear
insheet using E:\数据资料\CEPII数据\HS96\baci96_2001.csv
save E:\论文毕业设计\数据\dta\2001.dta,replace
clear
insheet using E:\数据资料\CEPII数据\HS96\baci96_2002.csv
save E:\论文毕业设计\数据\dta\2002.dta,replace
clear
insheet using E:\数据资料\CEPII数据\HS96\baci96_2003.csv
save E:\论文毕业设计\数据\dta\2003.dta,replace
clear
insheet using E:\数据资料\CEPII数据\HS96\baci96_2004.csv
save E:\论文毕业设计\数据\dta\2004.dta,replace
clear
insheet using E:\数据资料\CEPII数据\HS96\baci96_2005.csv
save E:\论文毕业设计\数据\dta\2005.dta,replace
clear
insheet using E:\数据资料\CEPII数据\HS96\baci96_2006.csv
save E:\论文毕业设计\数据\dta\2006.dta,replace
clear
insheet using E:\数据资料\CEPII数据\HS96\baci96_2007.csv
save E:\论文毕业设计\数据\dta\2007.dta,replace
clear
insheet using E:\数据资料\CEPII数据\HS96\baci96_2008.csv
save E:\论文毕业设计\数据\dta\2008.dta,replace
clear
insheet using E:\数据资料\CEPII数据\HS96\baci96_2009.csv
save E:\论文毕业设计\数据\dta\2009.dta,replace
clear
insheet using E:\数据资料\CEPII数据\HS96\baci96_2010.csv
save E:\论文毕业设计\数据\dta\2010.dta,replace
clear
insheet using E:\数据资料\CEPII数据\HS96\baci96_2011.csv
save E:\论文毕业设计\数据\dta\2011.dta,replace
clear
insheet using E:\数据资料\CEPII数据\HS96\baci96_2012.csv
save E:\论文毕业设计\数据\dta\2012.dta,replace
clear
insheet using E:\数据资料\CEPII数据\HS96\baci96_2013.csv
save E:\论文毕业设计\数据\dta\2013.dta,replace
clear
insheet using E:\数据资料\CEPII数据\HS96\baci96_2014.csv
save E:\论文毕业设计\数据\dta\2014.dta,replace
*合并2000-2014年国家-产品层面出口数据。
use  E:\论文毕业设计\数据\dta\2000.dta,clear
append using E:\论文毕业设计\数据\dta\2001.dta
append using E:\论文毕业设计\数据\dta\2002.dta
append using E:\论文毕业设计\数据\dta\2003.dta
append using E:\论文毕业设计\数据\dta\2004.dta
append using E:\论文毕业设计\数据\dta\2005.dta
append using E:\论文毕业设计\数据\dta\2006.dta
append using E:\论文毕业设计\数据\dta\2007.dta
append using E:\论文毕业设计\数据\dta\2008.dta
append using E:\论文毕业设计\数据\dta\2009.dta
append using E:\论文毕业设计\数据\dta\2010.dta
append using E:\论文毕业设计\数据\dta\2011.dta
append using E:\论文毕业设计\数据\dta\2012.dta
append using E:\论文毕业设计\数据\dta\2013.dta
append using E:\论文毕业设计\数据\dta\2014.dta
save E:\论文毕业设计\数据\dta\2000-2014.dta,replace

*人均GDP匹配
reshape long gdp ,i(iso3) j(year)
use E:\论文毕业设计\数据\人均gdp\gdp.dta,clear
use E:\论文毕业设计\数据\数据匹配\国家匹配.dta,clear
merge m:m i using E:\论文毕业设计\数据\数据匹配\国家匹配.dta
drop _merge
drop if i == .
rename year t
save E:\论文毕业设计\数据\人均gdp\gdp匹配国家.dta,replace
*二、计算产品技术复杂度（全部）
*2000
use E:\论文毕业设计\数据\dta\2000.dta,clear
collapse (sum) v, by(t hs6 i) // i国某产品总出口
rename v kallv
save  E:\论文毕业设计\数据\dta\2000i国某产品总出口.dta,replace
collapse (sum) kallv, by(t i) // i国总出口
rename kallv allv
save E:\论文毕业设计\数据\dta\2000i国总出口.dta,replace
use E:\论文毕业设计\数据\dta\2000i国某产品总出口.dta,clear
merge m:1 t i using E:\论文毕业设计\数据\dta\2000i国总出口.dta
drop _merge
gen x=kallv/allv        //每个国家每种出口产品占该国的出口份额
save E:\论文毕业设计\数据\dta\2000有x.dta,replace
collapse (sum) x,by(hs6 t) //计算所有国家某产品份额之和
rename x cpor //所有国家某产品比例之和
save E:\论文毕业设计\数据\dta\2000所有国家比例之和.dta,replace
use E:\论文毕业设计\数据\dta\2000有x.dta,clear
merge m:1 t hs6 using E:\论文毕业设计\数据\dta\2000所有国家比例之和.dta
drop _merge
merge m:m i t using E:\论文毕业设计\数据\人均gdp\gdp.dta  //匹配人均GDP
drop _merge
drop if gdp == .
gen w =x/cpor
gen wy =w*gdp
collapse (sum) wy,by(hs6 t)
rename wy prody
save E:\论文毕业设计\数据\dta\2000年产品技术复杂度.dta,replace

*2001
use E:\论文毕业设计\数据\dta\2001.dta,clear
collapse (sum) v, by(t hs6 i) // i国某产品总出口
rename v kallv
save  E:\论文毕业设计\数据\dta\2001i国某产品总出口.dta,replace
collapse (sum) kallv, by(t i) // i国总出口
rename kallv allv
save E:\论文毕业设计\数据\dta\2001i国总出口.dta,replace
use E:\论文毕业设计\数据\dta\2001i国某产品总出口.dta,clear
merge m:1 t i using E:\论文毕业设计\数据\dta\2001i国总出口.dta
drop _merge
gen x=kallv/allv        //每个国家每种出口产品占该国的出口份额
save E:\论文毕业设计\数据\dta\2001有x.dta,replace
collapse (sum) x,by(hs6 t) //计算所有国家某产品份额之和
rename x cpor //所有国家某产品比例之和
save E:\论文毕业设计\数据\dta\2001所有国家比例之和.dta,replace
use E:\论文毕业设计\数据\dta\2001有x.dta,clear
merge m:m t hs6 using E:\论文毕业设计\数据\dta\2001所有国家比例之和.dta
drop _merge
merge m:m i t using E:\论文毕业设计\数据\人均gdp\gdp.dta  //匹配人均GDP
drop _merge
drop if gdp == .
gen w =x/cpor
gen wy =w*gdp
collapse (sum) wy,by(hs6 t)
rename wy prody
save E:\论文毕业设计\数据\dta\2001年产品技术复杂度.dta,replace

*2002
use E:\论文毕业设计\数据\dta\2002.dta,clear
collapse (sum) v, by(t hs6 i) // i国某产品总出口
rename v kallv
save  E:\论文毕业设计\数据\dta\2002i国某产品总出口.dta,replace
collapse (sum) kallv, by(t i) // i国总出口
rename kallv allv
save E:\论文毕业设计\数据\dta\2002i国总出口.dta,replace
use E:\论文毕业设计\数据\dta\2002i国某产品总出口.dta,clear
merge m:1 t i using E:\论文毕业设计\数据\dta\2002i国总出口.dta
drop _merge
gen x=kallv/allv        //每个国家每种出口产品占该国的出口份额
save E:\论文毕业设计\数据\dta\2002有x.dta,replace
collapse (sum) x,by(hs6 t) //计算所有国家某产品份额之和
rename x cpor //所有国家某产品比例之和
save E:\论文毕业设计\数据\dta\2002所有国家比例之和.dta,replace
use E:\论文毕业设计\数据\dta\2002有x.dta,clear
merge m:m t hs6 using E:\论文毕业设计\数据\dta\2002所有国家比例之和.dta
drop _merge
merge m:m i t using E:\论文毕业设计\数据\人均gdp\gdp.dta  //匹配人均GDP
drop _merge
drop if gdp == .
gen w =x/cpor
gen wy =w*gdp
collapse (sum) wy,by(hs6 t)
rename wy prody
save E:\论文毕业设计\数据\dta\2002年产品技术复杂度.dta,replace

*2003
use E:\论文毕业设计\数据\dta\2003.dta,clear
collapse (sum) v, by(t hs6 i) // i国某产品总出口
rename v kallv
save  E:\论文毕业设计\数据\dta\2003i国某产品总出口.dta,replace
collapse (sum) kallv, by(t i) // i国总出口
rename kallv allv
save E:\论文毕业设计\数据\dta\2003i国总出口.dta,replace
use E:\论文毕业设计\数据\dta\2003i国某产品总出口.dta,clear
merge m:1 t i using E:\论文毕业设计\数据\dta\2003i国总出口.dta
drop _merge
gen x=kallv/allv        //每个国家每种出口产品占该国的出口份额
save E:\论文毕业设计\数据\dta\2003有x.dta,replace
collapse (sum) x,by(hs6 t) //计算所有国家某产品份额之和
rename x cpor //所有国家某产品比例之和
save E:\论文毕业设计\数据\dta\2003所有国家比例之和.dta,replace
use E:\论文毕业设计\数据\dta\2003有x.dta,clear
merge m:m t hs6 using E:\论文毕业设计\数据\dta\2003所有国家比例之和.dta
drop _merge
merge m:m i t using E:\论文毕业设计\数据\人均gdp\gdp.dta  //匹配人均GDP
drop _merge
drop if gdp == .
gen w =x/cpor
gen wy =w*gdp
collapse (sum) wy,by(hs6 t)
rename wy prody
save E:\论文毕业设计\数据\dta\2003年产品技术复杂度.dta,replace

*2004
use E:\论文毕业设计\数据\dta\2004.dta,clear
collapse (sum) v, by(t hs6 i) // i国某产品总出口
rename v kallv
save  E:\论文毕业设计\数据\dta\2004i国某产品总出口.dta,replace
collapse (sum) kallv, by(t i) // i国总出口
rename kallv allv
save E:\论文毕业设计\数据\dta\2004i国总出口.dta,replace
use E:\论文毕业设计\数据\dta\2004i国某产品总出口.dta,clear
merge m:1 t i using E:\论文毕业设计\数据\dta\2004i国总出口.dta
drop _merge
gen x=kallv/allv        //每个国家每种出口产品占该国的出口份额
save E:\论文毕业设计\数据\dta\2004有x.dta,replace
collapse (sum) x,by(hs6 t) //计算所有国家某产品份额之和
rename x cpor //所有国家某产品比例之和
save E:\论文毕业设计\数据\dta\2004所有国家比例之和.dta,replace
use E:\论文毕业设计\数据\dta\2004有x.dta,clear
merge m:m t hs6 using E:\论文毕业设计\数据\dta\2004所有国家比例之和.dta
drop _merge
merge m:m i t using E:\论文毕业设计\数据\人均gdp\gdp.dta  //匹配人均GDP
drop _merge
drop if gdp == .
gen w =x/cpor
gen wy =w*gdp
collapse (sum) wy,by(hs6 t)
rename wy prody
save E:\论文毕业设计\数据\dta\2004年产品技术复杂度.dta,replace

*2005
use E:\论文毕业设计\数据\dta\2005.dta,clear
collapse (sum) v, by(t hs6 i) // i国某产品总出口
rename v kallv
save  E:\论文毕业设计\数据\dta\2005i国某产品总出口.dta,replace
collapse (sum) kallv, by(t i) // i国总出口
rename kallv allv
save E:\论文毕业设计\数据\dta\2005i国总出口.dta,replace
use E:\论文毕业设计\数据\dta\2005i国某产品总出口.dta,clear
merge m:1 t i using E:\论文毕业设计\数据\dta\2005i国总出口.dta
drop _merge
gen x=kallv/allv        //每个国家每种出口产品占该国的出口份额
save E:\论文毕业设计\数据\dta\2005有x.dta,replace
collapse (sum) x,by(hs6 t) //计算所有国家某产品份额之和
rename x cpor //所有国家某产品比例之和
save E:\论文毕业设计\数据\dta\2005所有国家比例之和.dta,replace
use E:\论文毕业设计\数据\dta\2005有x.dta,clear
merge m:m t hs6 using E:\论文毕业设计\数据\dta\2005所有国家比例之和.dta
drop _merge
merge m:m i t using E:\论文毕业设计\数据\人均gdp\gdp.dta  //匹配人均GDP
drop _merge
drop if gdp == .
gen w =x/cpor
gen wy =w*gdp
collapse (sum) wy,by(hs6 t)
rename wy prody
save E:\论文毕业设计\数据\dta\2005年产品技术复杂度.dta,replace

*2006
use E:\论文毕业设计\数据\dta\2006.dta,clear
collapse (sum) v, by(t hs6 i) // i国某产品总出口
rename v kallv
save  E:\论文毕业设计\数据\dta\2006i国某产品总出口.dta,replace
collapse (sum) kallv, by(t i) // i国总出口
rename kallv allv
save E:\论文毕业设计\数据\dta\2006i国总出口.dta,replace
use E:\论文毕业设计\数据\dta\2006i国某产品总出口.dta,clear
merge m:1 t i using E:\论文毕业设计\数据\dta\2006i国总出口.dta
drop _merge
gen x=kallv/allv        //每个国家每种出口产品占该国的出口份额
save E:\论文毕业设计\数据\dta\2006有x.dta,replace
collapse (sum) x,by(hs6 t) //计算所有国家某产品份额之和
rename x cpor //所有国家某产品比例之和
save E:\论文毕业设计\数据\dta\2006所有国家比例之和.dta,replace
use E:\论文毕业设计\数据\dta\2006有x.dta,clear
merge m:m t hs6 using E:\论文毕业设计\数据\dta\2006所有国家比例之和.dta
drop _merge
merge m:m i t using E:\论文毕业设计\数据\人均gdp\gdp.dta  //匹配人均GDP
drop _merge
drop if gdp == .
gen w =x/cpor
gen wy =w*gdp
collapse (sum) wy,by(hs6 t)
rename wy prody
save E:\论文毕业设计\数据\dta\2006年产品技术复杂度.dta,replace

*2007
use E:\论文毕业设计\数据\dta\2007.dta,clear
collapse (sum) v, by(t hs6 i) // i国某产品总出口
rename v kallv
save  E:\论文毕业设计\数据\dta\2007i国某产品总出口.dta,replace
collapse (sum) kallv, by(t i) // i国总出口
rename kallv allv
save E:\论文毕业设计\数据\dta\2007i国总出口.dta,replace
use E:\论文毕业设计\数据\dta\2007i国某产品总出口.dta,clear
merge m:1 t i using E:\论文毕业设计\数据\dta\2007i国总出口.dta
drop _merge
gen x=kallv/allv        //每个国家每种出口产品占该国的出口份额
save E:\论文毕业设计\数据\dta\2007有x.dta,replace
collapse (sum) x,by(hs6 t) //计算所有国家某产品份额之和
rename x cpor //所有国家某产品比例之和
save E:\论文毕业设计\数据\dta\2007所有国家比例之和.dta,replace
use E:\论文毕业设计\数据\dta\2007有x.dta,clear
merge m:m t hs6 using E:\论文毕业设计\数据\dta\2007所有国家比例之和.dta
drop _merge
merge m:m i t using E:\论文毕业设计\数据\人均gdp\gdp.dta  //匹配人均GDP
drop _merge
drop if gdp == .
gen w =x/cpor
gen wy =w*gdp
collapse (sum) wy,by(hs6 t)
rename wy prody
save E:\论文毕业设计\数据\dta\2007年产品技术复杂度.dta,replace

*2008
use E:\论文毕业设计\数据\dta\2008.dta,clear
collapse (sum) v, by(t hs6 i) // i国某产品总出口
rename v kallv
save  E:\论文毕业设计\数据\dta\2008i国某产品总出口.dta,replace
collapse (sum) kallv, by(t i) // i国总出口
rename kallv allv
save E:\论文毕业设计\数据\dta\2008i国总出口.dta,replace
use E:\论文毕业设计\数据\dta\2008i国某产品总出口.dta,clear
merge m:1 t i using E:\论文毕业设计\数据\dta\2008i国总出口.dta
drop _merge
gen x=kallv/allv        //每个国家每种出口产品占该国的出口份额
save E:\论文毕业设计\数据\dta\2008有x.dta,replace
collapse (sum) x,by(hs6 t) //计算所有国家某产品份额之和
rename x cpor //所有国家某产品比例之和
save E:\论文毕业设计\数据\dta\2008所有国家比例之和.dta,replace
use E:\论文毕业设计\数据\dta\2008有x.dta,clear
merge m:m t hs6 using E:\论文毕业设计\数据\dta\2008所有国家比例之和.dta
drop _merge
merge m:m i t using E:\论文毕业设计\数据\人均gdp\gdp.dta  //匹配人均GDP
drop _merge
drop if gdp == .
gen w =x/cpor
gen wy =w*gdp
collapse (sum) wy,by(hs6 t)
rename wy prody
save E:\论文毕业设计\数据\dta\2008年产品技术复杂度.dta,replace

*2009
use E:\论文毕业设计\数据\dta\2009.dta,clear
collapse (sum) v, by(t hs6 i) // i国某产品总出口
rename v kallv
save  E:\论文毕业设计\数据\dta\2009i国某产品总出口.dta,replace
collapse (sum) kallv, by(t i) // i国总出口
rename kallv allv
save E:\论文毕业设计\数据\dta\2009i国总出口.dta,replace
use E:\论文毕业设计\数据\dta\2009i国某产品总出口.dta,clear
merge m:1 t i using E:\论文毕业设计\数据\dta\2009i国总出口.dta
drop _merge
gen x=kallv/allv        //每个国家每种出口产品占该国的出口份额
save E:\论文毕业设计\数据\dta\2009有x.dta,replace
collapse (sum) x,by(hs6 t) //计算所有国家某产品份额之和
rename x cpor //所有国家某产品比例之和
save E:\论文毕业设计\数据\dta\2009所有国家比例之和.dta,replace
use E:\论文毕业设计\数据\dta\2009有x.dta,clear
merge m:m t hs6 using E:\论文毕业设计\数据\dta\2009所有国家比例之和.dta
drop _merge
merge m:m i t using E:\论文毕业设计\数据\人均gdp\gdp.dta  //匹配人均GDP
drop _merge
drop if gdp == .
gen w =x/cpor
gen wy =w*gdp
collapse (sum) wy,by(hs6 t)
rename wy prody
save E:\论文毕业设计\数据\dta\2009年产品技术复杂度.dta,replace

*2010
use E:\论文毕业设计\数据\dta\2010.dta,clear
collapse (sum) v, by(t hs6 i) // i国某产品总出口
rename v kallv
save  E:\论文毕业设计\数据\dta\2010i国某产品总出口.dta,replace
collapse (sum) kallv, by(t i) // i国总出口
rename kallv allv
save E:\论文毕业设计\数据\dta\2010i国总出口.dta,replace
use E:\论文毕业设计\数据\dta\2010i国某产品总出口.dta,clear
merge m:1 t i using E:\论文毕业设计\数据\dta\2010i国总出口.dta
drop _merge
gen x=kallv/allv        //每个国家每种出口产品占该国的出口份额
save E:\论文毕业设计\数据\dta\2010有x.dta,replace
collapse (sum) x,by(hs6 t) //计算所有国家某产品份额之和
rename x cpor //所有国家某产品比例之和
save E:\论文毕业设计\数据\dta\2010所有国家比例之和.dta,replace
use E:\论文毕业设计\数据\dta\2010有x.dta,clear
merge m:m t hs6 using E:\论文毕业设计\数据\dta\2010所有国家比例之和.dta
drop _merge
merge m:m i t using E:\论文毕业设计\数据\人均gdp\gdp.dta  //匹配人均GDP
drop _merge
drop if gdp == .
gen w =x/cpor
gen wy =w*gdp
collapse (sum) wy,by(hs6 t)
rename wy prody
save E:\论文毕业设计\数据\dta\2010年产品技术复杂度.dta,replace

*2011
use E:\论文毕业设计\数据\dta\2011.dta,clear
collapse (sum) v, by(t hs6 i) // i国某产品总出口
rename v kallv
save  E:\论文毕业设计\数据\dta\2011i国某产品总出口.dta,replace
collapse (sum) kallv, by(t i) // i国总出口
rename kallv allv
save E:\论文毕业设计\数据\dta\2011i国总出口.dta,replace
use E:\论文毕业设计\数据\dta\2011i国某产品总出口.dta,clear
merge m:1 t i using E:\论文毕业设计\数据\dta\2011i国总出口.dta
drop _merge
gen x=kallv/allv        //每个国家每种出口产品占该国的出口份额
save E:\论文毕业设计\数据\dta\2011有x.dta,replace
collapse (sum) x,by(hs6 t) //计算所有国家某产品份额之和
rename x cpor //所有国家某产品比例之和
save E:\论文毕业设计\数据\dta\2011所有国家比例之和.dta,replace
use E:\论文毕业设计\数据\dta\2011有x.dta,clear
merge m:m t hs6 using E:\论文毕业设计\数据\dta\2011所有国家比例之和.dta
drop _merge
merge m:m i t using E:\论文毕业设计\数据\人均gdp\gdp.dta  //匹配人均GDP
drop _merge
drop if gdp == .
gen w =x/cpor
gen wy =w*gdp
collapse (sum) wy,by(hs6 t)
rename wy prody
save E:\论文毕业设计\数据\dta\2011年产品技术复杂度.dta,replace

*2012
use E:\论文毕业设计\数据\dta\2012.dta,clear
collapse (sum) v, by(t hs6 i) // i国某产品总出口
rename v kallv
save  E:\论文毕业设计\数据\dta\2012i国某产品总出口.dta,replace
collapse (sum) kallv, by(t i) // i国总出口
rename kallv allv
save E:\论文毕业设计\数据\dta\2012i国总出口.dta,replace
use E:\论文毕业设计\数据\dta\2012i国某产品总出口.dta,clear
merge m:1 t i using E:\论文毕业设计\数据\dta\2012i国总出口.dta
drop _merge
gen x=kallv/allv        //每个国家每种出口产品占该国的出口份额
save E:\论文毕业设计\数据\dta\2012有x.dta,replace
collapse (sum) x,by(hs6 t) //计算所有国家某产品份额之和
rename x cpor //所有国家某产品比例之和
save E:\论文毕业设计\数据\dta\2012所有国家比例之和.dta,replace
use E:\论文毕业设计\数据\dta\2012有x.dta,clear
merge m:m t hs6 using E:\论文毕业设计\数据\dta\2012所有国家比例之和.dta
drop _merge
merge m:m i t using E:\论文毕业设计\数据\人均gdp\gdp.dta  //匹配人均GDP
drop _merge
drop if gdp == .
gen w =x/cpor
gen wy =w*gdp
collapse (sum) wy,by(hs6 t)
rename wy prody
save E:\论文毕业设计\数据\dta\2012年产品技术复杂度.dta,replace

*2013
use E:\论文毕业设计\数据\dta\2013.dta,clear
collapse (sum) v, by(t hs6 i) // i国某产品总出口
rename v kallv
save  E:\论文毕业设计\数据\dta\2013i国某产品总出口.dta,replace
collapse (sum) kallv, by(t i) // i国总出口
rename kallv allv
save E:\论文毕业设计\数据\dta\2013i国总出口.dta,replace
use E:\论文毕业设计\数据\dta\2013i国某产品总出口.dta,clear
merge m:1 t i using E:\论文毕业设计\数据\dta\2013i国总出口.dta
drop _merge
gen x=kallv/allv        //每个国家每种出口产品占该国的出口份额
save E:\论文毕业设计\数据\dta\2013有x.dta,replace
collapse (sum) x,by(hs6 t) //计算所有国家某产品份额之和
rename x cpor //所有国家某产品比例之和
save E:\论文毕业设计\数据\dta\2013所有国家比例之和.dta,replace
use E:\论文毕业设计\数据\dta\2013有x.dta,clear
merge m:m t hs6 using E:\论文毕业设计\数据\dta\2013所有国家比例之和.dta
drop _merge
merge m:m i t using E:\论文毕业设计\数据\人均gdp\gdp.dta  //匹配人均GDP
drop _merge
drop if gdp == .
gen w =x/cpor
gen wy =w*gdp
collapse (sum) wy,by(hs6 t)
rename wy prody
save E:\论文毕业设计\数据\dta\2013年产品技术复杂度.dta,replace

*2014
use E:\论文毕业设计\数据\dta\2014.dta,clear
collapse (sum) v, by(t hs6 i) // i国某产品总出口
rename v kallv
save  E:\论文毕业设计\数据\dta\2014i国某产品总出口.dta,replace
collapse (sum) kallv, by(t i) // i国总出口
rename kallv allv
save E:\论文毕业设计\数据\dta\2014i国总出口.dta,replace
use E:\论文毕业设计\数据\dta\2014i国某产品总出口.dta,clear
merge m:1 t i using E:\论文毕业设计\数据\dta\2014i国总出口.dta
drop _merge
gen x=kallv/allv        //每个国家每种出口产品占该国的出口份额
save E:\论文毕业设计\数据\dta\2014有x.dta,replace
collapse (sum) x,by(hs6 t) //计算所有国家某产品份额之和
rename x cpor //所有国家某产品比例之和
save E:\论文毕业设计\数据\dta\2014所有国家比例之和.dta,replace
use E:\论文毕业设计\数据\dta\2014有x.dta,clear
merge m:m t hs6 using E:\论文毕业设计\数据\dta\2014所有国家比例之和.dta
drop _merge
merge m:m i t using E:\论文毕业设计\数据\人均gdp\gdp.dta  //匹配人均GDP
drop _merge
drop if gdp == .
gen w =x/cpor
gen wy =w*gdp
collapse (sum) wy,by(hs6 t)
rename wy prody
save E:\论文毕业设计\数据\dta\2014年产品技术复杂度.dta,replace

*将出口产品技术复杂度匹配到原数据中并计算国家层面技术复杂度
*2000
use E:\论文毕业设计\数据\dta\2000有x.dta,clear
merge m:1 hs6 t using E:\论文毕业设计\数据\dta\2000年产品技术复杂度.dta
drop _merge 
save E:\论文毕业设计\数据\dta\2000有x有产品技术复杂度.dta,replace
gen expy=x*prody
collapse (sum) expy,by(i t)
drop if i == .
save E:\论文毕业设计\数据\dta\2000国家层面技术复杂度.dta,replace

*2001
use E:\论文毕业设计\数据\dta\2001有x.dta,clear
merge m:1 hs6 t using E:\论文毕业设计\数据\dta\2001年产品技术复杂度.dta
drop _merge 
save E:\论文毕业设计\数据\dta\2001有x有产品技术复杂度.dta,replace
gen expy=x*prody
collapse (sum) expy,by(i t)
drop if i == .
save E:\论文毕业设计\数据\dta\2001国家层面技术复杂度.dta,replace

*2002
use E:\论文毕业设计\数据\dta\2002有x.dta,clear
merge m:1 hs6 t using E:\论文毕业设计\数据\dta\2002年产品技术复杂度.dta
drop _merge 
save E:\论文毕业设计\数据\dta\2002有x有产品技术复杂度.dta,replace
gen expy=x*prody
collapse (sum) expy,by(i t)
drop if i == .
save E:\论文毕业设计\数据\dta\2002国家层面技术复杂度.dta,replace

*2003
use E:\论文毕业设计\数据\dta\2003有x.dta,clear
merge m:1 hs6 t using E:\论文毕业设计\数据\dta\2003年产品技术复杂度.dta
drop _merge 
save E:\论文毕业设计\数据\dta\2003有x有产品技术复杂度.dta,replace
gen expy=x*prody
collapse (sum) expy,by(i t)
drop if i == .
save E:\论文毕业设计\数据\dta\2003国家层面技术复杂度.dta,replace

*2004
use E:\论文毕业设计\数据\dta\2004有x.dta,clear
merge m:1 hs6 t using E:\论文毕业设计\数据\dta\2004年产品技术复杂度.dta
drop _merge 
save E:\论文毕业设计\数据\dta\2004有x有产品技术复杂度.dta,replace
gen expy=x*prody
collapse (sum) expy,by(i t)
drop if i == .
save E:\论文毕业设计\数据\dta\2004国家层面技术复杂度.dta,replace

*2005
use E:\论文毕业设计\数据\dta\2005有x.dta,clear
merge m:1 hs6 t using E:\论文毕业设计\数据\dta\2005年产品技术复杂度.dta
drop _merge 
save E:\论文毕业设计\数据\dta\2005有x有产品技术复杂度.dta,replace
gen expy=x*prody
collapse (sum) expy,by(i t)
drop if i == .
save E:\论文毕业设计\数据\dta\2005国家层面技术复杂度.dta,replace

*2006
use E:\论文毕业设计\数据\dta\2006有x.dta,clear
merge m:1 hs6 t using E:\论文毕业设计\数据\dta\2006年产品技术复杂度.dta
drop _merge 
save E:\论文毕业设计\数据\dta\2006有x有产品技术复杂度.dta,replace
gen expy=x*prody
collapse (sum) expy,by(i t)
drop if i == .
save E:\论文毕业设计\数据\dta\2006国家层面技术复杂度.dta,replace

*2007
use E:\论文毕业设计\数据\dta\2007有x.dta,clear
merge m:1 hs6 t using E:\论文毕业设计\数据\dta\2007年产品技术复杂度.dta
drop _merge 
save E:\论文毕业设计\数据\dta\2007有x有产品技术复杂度.dta,replace
gen expy=x*prody
collapse (sum) expy,by(i t)
drop if i == .
save E:\论文毕业设计\数据\dta\2007国家层面技术复杂度.dta,replace

*2008
use E:\论文毕业设计\数据\dta\2008有x.dta,clear
merge m:1 hs6 t using E:\论文毕业设计\数据\dta\2008年产品技术复杂度.dta
drop _merge 
save E:\论文毕业设计\数据\dta\2008有x有产品技术复杂度.dta,replace
gen expy=x*prody
collapse (sum) expy,by(i t)
drop if i == .
save E:\论文毕业设计\数据\dta\2008国家层面技术复杂度.dta,replace

*2009
use E:\论文毕业设计\数据\dta\2009有x.dta,clear
merge m:1 hs6 t using E:\论文毕业设计\数据\dta\2009年产品技术复杂度.dta
drop _merge 
save E:\论文毕业设计\数据\dta\2009有x有产品技术复杂度.dta,replace
gen expy=x*prody
collapse (sum) expy,by(i t)
drop if i == .
save E:\论文毕业设计\数据\dta\2009国家层面技术复杂度.dta,replace

*2010
use E:\论文毕业设计\数据\dta\2010有x.dta,clear
merge m:1 hs6 t using E:\论文毕业设计\数据\dta\2010年产品技术复杂度.dta
drop _merge 
save E:\论文毕业设计\数据\dta\2010有x有产品技术复杂度.dta,replace
gen expy=x*prody
collapse (sum) expy,by(i t)
drop if i == .
save E:\论文毕业设计\数据\dta\2010国家层面技术复杂度.dta,replace

*2011
use E:\论文毕业设计\数据\dta\2011有x.dta,clear
merge m:1 hs6 t using E:\论文毕业设计\数据\dta\2011年产品技术复杂度.dta
drop _merge 
save E:\论文毕业设计\数据\dta\2011有x有产品技术复杂度.dta,replace
gen expy=x*prody
collapse (sum) expy,by(i t)
drop if i == .
save E:\论文毕业设计\数据\dta\2011国家层面技术复杂度.dta,replace

*2012
use E:\论文毕业设计\数据\dta\2012有x.dta,clear
merge m:1 hs6 t using E:\论文毕业设计\数据\dta\2012年产品技术复杂度.dta
drop _merge 
save E:\论文毕业设计\数据\dta\2012有x有产品技术复杂度.dta,replace
gen expy=x*prody
collapse (sum) expy,by(i t)
drop if i == .
save E:\论文毕业设计\数据\dta\2012国家层面技术复杂度.dta,replace

*2013
use E:\论文毕业设计\数据\dta\2013有x.dta,clear
merge m:1 hs6 t using E:\论文毕业设计\数据\dta\2013年产品技术复杂度.dta
drop _merge 
save E:\论文毕业设计\数据\dta\2013有x有产品技术复杂度.dta,replace
gen expy=x*prody
collapse (sum) expy,by(i t)
drop if i == .
save E:\论文毕业设计\数据\dta\2013国家层面技术复杂度.dta,replace

*2014
use E:\论文毕业设计\数据\dta\2014有x.dta,clear
merge m:1 hs6 t using E:\论文毕业设计\数据\dta\2014年产品技术复杂度.dta
drop _merge 
save E:\论文毕业设计\数据\dta\2014有x有产品技术复杂度.dta,replace
gen expy=x*prody
collapse (sum) expy,by(i t)
drop if i == .
save E:\论文毕业设计\数据\dta\2014国家层面技术复杂度.dta,replace

*合并年份 （国家层面）
use E:\论文毕业设计\数据\dta\2000国家层面技术复杂度.dta,clear
append using E:\论文毕业设计\数据\dta\2001国家层面技术复杂度.dta
append using E:\论文毕业设计\数据\dta\2002国家层面技术复杂度.dta
append using E:\论文毕业设计\数据\dta\2003国家层面技术复杂度.dta
append using E:\论文毕业设计\数据\dta\2004国家层面技术复杂度.dta
append using E:\论文毕业设计\数据\dta\2005国家层面技术复杂度.dta
append using E:\论文毕业设计\数据\dta\2006国家层面技术复杂度.dta
append using E:\论文毕业设计\数据\dta\2007国家层面技术复杂度.dta
append using E:\论文毕业设计\数据\dta\2008国家层面技术复杂度.dta
append using E:\论文毕业设计\数据\dta\2009国家层面技术复杂度.dta
append using E:\论文毕业设计\数据\dta\2010国家层面技术复杂度.dta
append using E:\论文毕业设计\数据\dta\2011国家层面技术复杂度.dta
append using E:\论文毕业设计\数据\dta\2012国家层面技术复杂度.dta
append using E:\论文毕业设计\数据\dta\2013国家层面技术复杂度.dta
append using E:\论文毕业设计\数据\dta\2014国家层面技术复杂度.dta
save E:\论文毕业设计\数据\dta\2000-2014国家层面技术复杂度.dta,replace

*合并年份 （产品层面）
use E:\论文毕业设计\数据\dta\2000年产品技术复杂度.dta,clear
append using E:\论文毕业设计\数据\dta\2001年产品技术复杂度.dta
append using E:\论文毕业设计\数据\dta\2002年产品技术复杂度.dta
append using E:\论文毕业设计\数据\dta\2003年产品技术复杂度.dta
append using E:\论文毕业设计\数据\dta\2004年产品技术复杂度.dta
append using E:\论文毕业设计\数据\dta\2005年产品技术复杂度.dta
append using E:\论文毕业设计\数据\dta\2006年产品技术复杂度.dta
append using E:\论文毕业设计\数据\dta\2007年产品技术复杂度.dta
append using E:\论文毕业设计\数据\dta\2008年产品技术复杂度.dta
append using E:\论文毕业设计\数据\dta\2009年产品技术复杂度.dta
append using E:\论文毕业设计\数据\dta\2010年产品技术复杂度.dta
append using E:\论文毕业设计\数据\dta\2011年产品技术复杂度.dta
append using E:\论文毕业设计\数据\dta\2012年产品技术复杂度.dta
append using E:\论文毕业设计\数据\dta\2013年产品技术复杂度.dta
append using E:\论文毕业设计\数据\dta\2014年产品技术复杂度.dta
drop if hs6 == .
save E:\论文毕业设计\数据\dta\2000-2012年产品技术复杂度.dta,replace



***************计算国内技术复杂度
****计算质量水平
*2000年
use  E:\论文毕业设计\数据\dta\2000.dta,clear
collapse (sum) v q ,by(hs6 i)
rename v sumv   //某国某产品出口总价值
rename q sumq   //某国某产品出口总数量
save E:\论文毕业设计\数据\质量计算\2000国家总量总价.dta,replace
collapse (sum) sumv ,by(hs6)
rename sumv sjallv //计算某产品的世界出口总额
save E:\论文毕业设计\数据\质量计算\2000世界某产品出口总价.dta,replace
use E:\论文毕业设计\数据\质量计算\2000国家总量总价.dta,clear
merge m:1 hs6 using E:\论文毕业设计\数据\质量计算\2000世界某产品出口总价.dta
drop _merge
gen share = sumv/sjallv //某国某产品占世界出口份额
gen unit =sumv/sumq
gen shareunit=share*unit  //份额*单价
collapse (sum) shareunit ,by(hs6)
merge 1:m hs6 using E:\论文毕业设计\数据\质量计算\2000国家总量总价.dta
drop _merge
gen unit =sumv/sumq
gen zl=unit/shareunit  //某国家某产品的质量水平
save E:\论文毕业设计\数据\质量计算\2000质量水平.dta,replace
use E:\论文毕业设计\数据\dta\2000有x有产品技术复杂度.dta,clear
merge m:1 hs6 i using E:\论文毕业设计\数据\质量计算\2000质量水平.dta
drop _merge
keep if i == 156 //只保留中国的出口数据
save E:\论文毕业设计\数据\质量计算\2000中国质量水平.dta,replace
*匹配VSS
*先匹配行业 
use E:\论文毕业设计\数据\质量计算\2000中国质量水平.dta,clear
merge n:1 hs6 using E:\论文毕业设计\数据\数据匹配\国家行业匹配匹配.dta
drop _merge 
*再匹配VSS
merge n:1 io t using  E:\论文毕业设计\数据\数据匹配\VSS匹配.dta   //匹配产品VSS水平
drop _merge
*************计算国内技术复杂度**************
*产品层面
replace vss = 0 if vss == .  //将没有VSS的产品设为1 参照刘琳和盛斌（2017）
gen NEW_prody=(zl^0.2)*(1-vss)*prody
drop if hs6 == .
save E:\论文毕业设计\数据\dta\2000产品国内技术复杂度.dta,replace
*国家层面
gen NEW_expy=x*NEW_prody
collapse (sum) NEW_expy,by(i t)
save E:\论文毕业设计\数据\dta\2000国家国内技术复杂度.dta,replace

*2001年
use  E:\论文毕业设计\数据\dta\2001.dta,clear
collapse (sum) v q ,by(hs6 i)
rename v sumv   //某国某产品出口总价值
rename q sumq   //某国某产品出口总数量
save E:\论文毕业设计\数据\质量计算\2001国家总量总价.dta,replace
collapse (sum) sumv ,by(hs6)
rename sumv sjallv //计算某产品的世界出口总额
save E:\论文毕业设计\数据\质量计算\2001世界某产品出口总价.dta,replace
use E:\论文毕业设计\数据\质量计算\2001国家总量总价.dta,clear
merge m:1 hs6 using E:\论文毕业设计\数据\质量计算\2001世界某产品出口总价.dta
drop _merge
gen share = sumv/sjallv //某国某产品占世界出口份额
gen unit =sumv/sumq
gen shareunit=share*unit  //份额*单价
collapse (sum) shareunit ,by(hs6)
merge 1:m hs6 using E:\论文毕业设计\数据\质量计算\2001国家总量总价.dta
drop _merge
gen unit =sumv/sumq
gen zl=unit/shareunit  //某国家某产品的质量水平
save E:\论文毕业设计\数据\质量计算\2001质量水平.dta,replace
use E:\论文毕业设计\数据\dta\2001有x有产品技术复杂度.dta,clear
merge m:1 hs6 i using E:\论文毕业设计\数据\质量计算\2001质量水平.dta
drop _merge
keep if i == 156 //只保留中国的出口数据
save E:\论文毕业设计\数据\质量计算\2001中国质量水平.dta,replace
*匹配VSS
*先匹配行业 
use E:\论文毕业设计\数据\质量计算\2001中国质量水平.dta,clear
merge n:1 hs6 using E:\论文毕业设计\数据\数据匹配\国家行业匹配匹配.dta
drop _merge 
*再匹配VSS
merge n:1 io t using  E:\论文毕业设计\数据\数据匹配\VSS匹配.dta   //匹配产品VSS水平
drop _merge
*************计算国内技术复杂度**************
*产品层面
replace vss = 0 if vss == .  //将没有VSS的产品设为1 参照刘琳和盛斌（2017）
gen NEW_prody=(zl^0.2)*(1-vss)*prody
drop if hs6 == .
save E:\论文毕业设计\数据\dta\2001产品国内技术复杂度.dta,replace
*国家层面
gen NEW_expy=x*NEW_prody
collapse (sum) NEW_expy,by(i t)
save E:\论文毕业设计\数据\dta\2001国家国内技术复杂度.dta,replace

*2002年
use  E:\论文毕业设计\数据\dta\2002.dta,clear
collapse (sum) v q ,by(hs6 i)
rename v sumv   //某国某产品出口总价值
rename q sumq   //某国某产品出口总数量
save E:\论文毕业设计\数据\质量计算\2002国家总量总价.dta,replace
collapse (sum) sumv ,by(hs6)
rename sumv sjallv //计算某产品的世界出口总额
save E:\论文毕业设计\数据\质量计算\2002世界某产品出口总价.dta,replace
use E:\论文毕业设计\数据\质量计算\2002国家总量总价.dta,clear
merge m:1 hs6 using E:\论文毕业设计\数据\质量计算\2002世界某产品出口总价.dta
drop _merge
gen share = sumv/sjallv //某国某产品占世界出口份额
gen unit =sumv/sumq
gen shareunit=share*unit  //份额*单价
collapse (sum) shareunit ,by(hs6)
merge 1:m hs6 using E:\论文毕业设计\数据\质量计算\2002国家总量总价.dta
drop _merge
gen unit =sumv/sumq
gen zl=unit/shareunit  //某国家某产品的质量水平
save E:\论文毕业设计\数据\质量计算\2002质量水平.dta,replace
use E:\论文毕业设计\数据\dta\2002有x有产品技术复杂度.dta,clear
merge m:1 hs6 i using E:\论文毕业设计\数据\质量计算\2002质量水平.dta
drop _merge
keep if i == 156 //只保留中国的出口数据
save E:\论文毕业设计\数据\质量计算\2002中国质量水平.dta,replace
*匹配VSS
*先匹配行业 
use E:\论文毕业设计\数据\质量计算\2002中国质量水平.dta,clear
merge n:1 hs6 using E:\论文毕业设计\数据\数据匹配\国家行业匹配匹配.dta
drop _merge 
*再匹配VSS
merge n:1 io t using  E:\论文毕业设计\数据\数据匹配\VSS匹配.dta   //匹配产品VSS水平
drop _merge
*************计算国内技术复杂度**************
*产品层面
replace vss = 0 if vss == .  //将没有VSS的产品设为1 参照刘琳和盛斌（2017）
gen NEW_prody=(zl^0.2)*(1-vss)*prody
drop if hs6 == .
save E:\论文毕业设计\数据\dta\2002产品国内技术复杂度.dta,replace
*国家层面
gen NEW_expy=x*NEW_prody
collapse (sum) NEW_expy,by(i t)
save E:\论文毕业设计\数据\dta\2002国家国内技术复杂度.dta,replace

*2003年
use  E:\论文毕业设计\数据\dta\2003.dta,clear
collapse (sum) v q ,by(hs6 i)
rename v sumv   //某国某产品出口总价值
rename q sumq   //某国某产品出口总数量
save E:\论文毕业设计\数据\质量计算\2003国家总量总价.dta,replace
collapse (sum) sumv ,by(hs6)
rename sumv sjallv //计算某产品的世界出口总额
save E:\论文毕业设计\数据\质量计算\2003世界某产品出口总价.dta,replace
use E:\论文毕业设计\数据\质量计算\2003国家总量总价.dta,clear
merge m:1 hs6 using E:\论文毕业设计\数据\质量计算\2003世界某产品出口总价.dta
drop _merge
gen share = sumv/sjallv //某国某产品占世界出口份额
gen unit =sumv/sumq
gen shareunit=share*unit  //份额*单价
collapse (sum) shareunit ,by(hs6)
merge 1:m hs6 using E:\论文毕业设计\数据\质量计算\2003国家总量总价.dta
drop _merge
gen unit =sumv/sumq
gen zl=unit/shareunit  //某国家某产品的质量水平
save E:\论文毕业设计\数据\质量计算\2003质量水平.dta,replace
use E:\论文毕业设计\数据\dta\2003有x有产品技术复杂度.dta,clear
merge m:1 hs6 i using E:\论文毕业设计\数据\质量计算\2003质量水平.dta
drop _merge
keep if i == 156 //只保留中国的出口数据
save E:\论文毕业设计\数据\质量计算\2003中国质量水平.dta,replace
*匹配VSS
*先匹配行业 
use E:\论文毕业设计\数据\质量计算\2003中国质量水平.dta,clear
merge n:1 hs6 using E:\论文毕业设计\数据\数据匹配\国家行业匹配匹配.dta
drop _merge 
*再匹配VSS
merge n:1 io t using  E:\论文毕业设计\数据\数据匹配\VSS匹配.dta   //匹配产品VSS水平
drop _merge
*************计算国内技术复杂度**************
*产品层面
replace vss = 0 if vss == .  //将没有VSS的产品设为1 参照刘琳和盛斌（2017）
gen NEW_prody=(zl^0.2)*(1-vss)*prody
drop if hs6 == .
save E:\论文毕业设计\数据\dta\2003产品国内技术复杂度.dta,replace
*国家层面
gen NEW_expy=x*NEW_prody
collapse (sum) NEW_expy,by(i t)
save E:\论文毕业设计\数据\dta\2003国家国内技术复杂度.dta,replace

*2004年
use  E:\论文毕业设计\数据\dta\2004.dta,clear
collapse (sum) v q ,by(hs6 i)
rename v sumv   //某国某产品出口总价值
rename q sumq   //某国某产品出口总数量
save E:\论文毕业设计\数据\质量计算\2004国家总量总价.dta,replace
collapse (sum) sumv ,by(hs6)
rename sumv sjallv //计算某产品的世界出口总额
save E:\论文毕业设计\数据\质量计算\2004世界某产品出口总价.dta,replace
use E:\论文毕业设计\数据\质量计算\2004国家总量总价.dta,clear
merge m:1 hs6 using E:\论文毕业设计\数据\质量计算\2004世界某产品出口总价.dta
drop _merge
gen share = sumv/sjallv //某国某产品占世界出口份额
gen unit =sumv/sumq
gen shareunit=share*unit  //份额*单价
collapse (sum) shareunit ,by(hs6)
merge 1:m hs6 using E:\论文毕业设计\数据\质量计算\2004国家总量总价.dta
drop _merge
gen unit =sumv/sumq
gen zl=unit/shareunit  //某国家某产品的质量水平
save E:\论文毕业设计\数据\质量计算\2004质量水平.dta,replace
use E:\论文毕业设计\数据\dta\2004有x有产品技术复杂度.dta,clear
merge m:1 hs6 i using E:\论文毕业设计\数据\质量计算\2004质量水平.dta
drop _merge
keep if i == 156 //只保留中国的出口数据
save E:\论文毕业设计\数据\质量计算\2004中国质量水平.dta,replace
*匹配VSS
*先匹配行业 
use E:\论文毕业设计\数据\质量计算\2004中国质量水平.dta,clear
merge n:1 hs6 using E:\论文毕业设计\数据\数据匹配\国家行业匹配匹配.dta
drop _merge 
*再匹配VSS
merge n:1 io t using  E:\论文毕业设计\数据\数据匹配\VSS匹配.dta   //匹配产品VSS水平
drop _merge
*************计算国内技术复杂度**************
*产品层面
replace vss = 0 if vss == .  //将没有VSS的产品设为1 参照刘琳和盛斌（2017）
gen NEW_prody=(zl^0.2)*(1-vss)*prody
drop if hs6 == .
save E:\论文毕业设计\数据\dta\2004产品国内技术复杂度.dta,replace
*国家层面
gen NEW_expy=x*NEW_prody
collapse (sum) NEW_expy,by(i t)
save E:\论文毕业设计\数据\dta\2004国家国内技术复杂度.dta,replace

*2005年
use  E:\论文毕业设计\数据\dta\2005.dta,clear
collapse (sum) v q ,by(hs6 i)
rename v sumv   //某国某产品出口总价值
rename q sumq   //某国某产品出口总数量
save E:\论文毕业设计\数据\质量计算\2005国家总量总价.dta,replace
collapse (sum) sumv ,by(hs6)
rename sumv sjallv //计算某产品的世界出口总额
save E:\论文毕业设计\数据\质量计算\2005世界某产品出口总价.dta,replace
use E:\论文毕业设计\数据\质量计算\2005国家总量总价.dta,clear
merge m:1 hs6 using E:\论文毕业设计\数据\质量计算\2005世界某产品出口总价.dta
drop _merge
gen share = sumv/sjallv //某国某产品占世界出口份额
gen unit =sumv/sumq
gen shareunit=share*unit  //份额*单价
collapse (sum) shareunit ,by(hs6)
merge 1:m hs6 using E:\论文毕业设计\数据\质量计算\2005国家总量总价.dta
drop _merge
gen unit =sumv/sumq
gen zl=unit/shareunit  //某国家某产品的质量水平
save E:\论文毕业设计\数据\质量计算\2005质量水平.dta,replace
use E:\论文毕业设计\数据\dta\2005有x有产品技术复杂度.dta,clear
merge m:1 hs6 i using E:\论文毕业设计\数据\质量计算\2005质量水平.dta
drop _merge
keep if i == 156 //只保留中国的出口数据
save E:\论文毕业设计\数据\质量计算\2005中国质量水平.dta,replace
*匹配VSS
*先匹配行业 
use E:\论文毕业设计\数据\质量计算\2005中国质量水平.dta,clear
merge n:1 hs6 using E:\论文毕业设计\数据\数据匹配\国家行业匹配匹配.dta
drop _merge 
*再匹配VSS
merge n:1 io t using  E:\论文毕业设计\数据\数据匹配\VSS匹配.dta   //匹配产品VSS水平
drop _merge
*************计算国内技术复杂度**************
*产品层面
replace vss = 0 if vss == .  //将没有VSS的产品设为1 参照刘琳和盛斌（2017）
gen NEW_prody=(zl^0.2)*(1-vss)*prody
drop if hs6 == .
save E:\论文毕业设计\数据\dta\2005产品国内技术复杂度.dta,replace
*国家层面
gen NEW_expy=x*NEW_prody
collapse (sum) NEW_expy,by(i t)
save E:\论文毕业设计\数据\dta\2005国家国内技术复杂度.dta,replace

*2006年
use  E:\论文毕业设计\数据\dta\2006.dta,clear
collapse (sum) v q ,by(hs6 i)
rename v sumv   //某国某产品出口总价值
rename q sumq   //某国某产品出口总数量
save E:\论文毕业设计\数据\质量计算\2006国家总量总价.dta,replace
collapse (sum) sumv ,by(hs6)
rename sumv sjallv //计算某产品的世界出口总额
save E:\论文毕业设计\数据\质量计算\2006世界某产品出口总价.dta,replace
use E:\论文毕业设计\数据\质量计算\2006国家总量总价.dta,clear
merge m:1 hs6 using E:\论文毕业设计\数据\质量计算\2006世界某产品出口总价.dta
drop _merge
gen share = sumv/sjallv //某国某产品占世界出口份额
gen unit =sumv/sumq
gen shareunit=share*unit  //份额*单价
collapse (sum) shareunit ,by(hs6)
merge 1:m hs6 using E:\论文毕业设计\数据\质量计算\2006国家总量总价.dta
drop _merge
gen unit =sumv/sumq
gen zl=unit/shareunit  //某国家某产品的质量水平
save E:\论文毕业设计\数据\质量计算\2006质量水平.dta,replace
use E:\论文毕业设计\数据\dta\2006有x有产品技术复杂度.dta,clear
merge m:1 hs6 i using E:\论文毕业设计\数据\质量计算\2006质量水平.dta
drop _merge
keep if i == 156 //只保留中国的出口数据
save E:\论文毕业设计\数据\质量计算\2006中国质量水平.dta,replace
*匹配VSS
*先匹配行业 
use E:\论文毕业设计\数据\质量计算\2006中国质量水平.dta,clear
merge n:1 hs6 using E:\论文毕业设计\数据\数据匹配\国家行业匹配匹配.dta
drop _merge 
*再匹配VSS
merge n:1 io t using  E:\论文毕业设计\数据\数据匹配\VSS匹配.dta   //匹配产品VSS水平
drop _merge
*************计算国内技术复杂度**************
*产品层面
replace vss = 0 if vss == .  //将没有VSS的产品设为1 参照刘琳和盛斌（2017）
gen NEW_prody=(zl^0.2)*(1-vss)*prody
drop if hs6 == .
save E:\论文毕业设计\数据\dta\2006产品国内技术复杂度.dta,replace
*国家层面
gen NEW_expy=x*NEW_prody
collapse (sum) NEW_expy,by(i t)
save E:\论文毕业设计\数据\dta\2006国家国内技术复杂度.dta,replace

*2007年
use  E:\论文毕业设计\数据\dta\2007.dta,clear
collapse (sum) v q ,by(hs6 i)
rename v sumv   //某国某产品出口总价值
rename q sumq   //某国某产品出口总数量
save E:\论文毕业设计\数据\质量计算\2007国家总量总价.dta,replace
collapse (sum) sumv ,by(hs6)
rename sumv sjallv //计算某产品的世界出口总额
save E:\论文毕业设计\数据\质量计算\2007世界某产品出口总价.dta,replace
use E:\论文毕业设计\数据\质量计算\2007国家总量总价.dta,clear
merge m:1 hs6 using E:\论文毕业设计\数据\质量计算\2007世界某产品出口总价.dta
drop _merge
gen share = sumv/sjallv //某国某产品占世界出口份额
gen unit =sumv/sumq
gen shareunit=share*unit  //份额*单价
collapse (sum) shareunit ,by(hs6)
merge 1:m hs6 using E:\论文毕业设计\数据\质量计算\2007国家总量总价.dta
drop _merge
gen unit =sumv/sumq
gen zl=unit/shareunit  //某国家某产品的质量水平
save E:\论文毕业设计\数据\质量计算\2007质量水平.dta,replace
use E:\论文毕业设计\数据\dta\2007有x有产品技术复杂度.dta,clear
merge m:1 hs6 i using E:\论文毕业设计\数据\质量计算\2007质量水平.dta
drop _merge
keep if i == 156 //只保留中国的出口数据
save E:\论文毕业设计\数据\质量计算\2007中国质量水平.dta,replace
*匹配VSS
*先匹配行业 
use E:\论文毕业设计\数据\质量计算\2007中国质量水平.dta,clear
merge n:1 hs6 using E:\论文毕业设计\数据\数据匹配\国家行业匹配匹配.dta
drop _merge 
*再匹配VSS
merge n:1 io t using  E:\论文毕业设计\数据\数据匹配\VSS匹配.dta   //匹配产品VSS水平
drop _merge
*************计算国内技术复杂度**************
*产品层面
replace vss = 0 if vss == .  //将没有VSS的产品设为1 参照刘琳和盛斌（2017）
gen NEW_prody=(zl^0.2)*(1-vss)*prody
drop if hs6 == .
save E:\论文毕业设计\数据\dta\2007产品国内技术复杂度.dta,replace
*国家层面
gen NEW_expy=x*NEW_prody
collapse (sum) NEW_expy,by(i t)
save E:\论文毕业设计\数据\dta\2007国家国内技术复杂度.dta,replace

*2008年
use  E:\论文毕业设计\数据\dta\2008.dta,clear
collapse (sum) v q ,by(hs6 i)
rename v sumv   //某国某产品出口总价值
rename q sumq   //某国某产品出口总数量
save E:\论文毕业设计\数据\质量计算\2008国家总量总价.dta,replace
collapse (sum) sumv ,by(hs6)
rename sumv sjallv //计算某产品的世界出口总额
save E:\论文毕业设计\数据\质量计算\2008世界某产品出口总价.dta,replace
use E:\论文毕业设计\数据\质量计算\2008国家总量总价.dta,clear
merge m:1 hs6 using E:\论文毕业设计\数据\质量计算\2008世界某产品出口总价.dta
drop _merge
gen share = sumv/sjallv //某国某产品占世界出口份额
gen unit =sumv/sumq
gen shareunit=share*unit  //份额*单价
collapse (sum) shareunit ,by(hs6)
merge 1:m hs6 using E:\论文毕业设计\数据\质量计算\2008国家总量总价.dta
drop _merge
gen unit =sumv/sumq
gen zl=unit/shareunit  //某国家某产品的质量水平
save E:\论文毕业设计\数据\质量计算\2008质量水平.dta,replace
use E:\论文毕业设计\数据\dta\2008有x有产品技术复杂度.dta,clear
merge m:1 hs6 i using E:\论文毕业设计\数据\质量计算\2008质量水平.dta
drop _merge
keep if i == 156 //只保留中国的出口数据
save E:\论文毕业设计\数据\质量计算\2008中国质量水平.dta,replace
*匹配VSS
*先匹配行业 
use E:\论文毕业设计\数据\质量计算\2008中国质量水平.dta,clear
merge n:1 hs6 using E:\论文毕业设计\数据\数据匹配\国家行业匹配匹配.dta
drop _merge 
*再匹配VSS
merge n:1 io t using  E:\论文毕业设计\数据\数据匹配\VSS匹配.dta   //匹配产品VSS水平
drop _merge
*************计算国内技术复杂度**************
*产品层面
replace vss = 0 if vss == .  //将没有VSS的产品设为1 参照刘琳和盛斌（2017）
gen NEW_prody=(zl^0.2)*(1-vss)*prody
drop if hs6 == .
save E:\论文毕业设计\数据\dta\2008产品国内技术复杂度.dta,replace
*国家层面
gen NEW_expy=x*NEW_prody
collapse (sum) NEW_expy,by(i t)
save E:\论文毕业设计\数据\dta\2008国家国内技术复杂度.dta,replace

*2009年
use  E:\论文毕业设计\数据\dta\2009.dta,clear
collapse (sum) v q ,by(hs6 i)
rename v sumv   //某国某产品出口总价值
rename q sumq   //某国某产品出口总数量
save E:\论文毕业设计\数据\质量计算\2009国家总量总价.dta,replace
collapse (sum) sumv ,by(hs6)
rename sumv sjallv //计算某产品的世界出口总额
save E:\论文毕业设计\数据\质量计算\2009世界某产品出口总价.dta,replace
use E:\论文毕业设计\数据\质量计算\2009国家总量总价.dta,clear
merge m:1 hs6 using E:\论文毕业设计\数据\质量计算\2009世界某产品出口总价.dta
drop _merge
gen share = sumv/sjallv //某国某产品占世界出口份额
gen unit =sumv/sumq
gen shareunit=share*unit  //份额*单价
collapse (sum) shareunit ,by(hs6)
merge 1:m hs6 using E:\论文毕业设计\数据\质量计算\2009国家总量总价.dta
drop _merge
gen unit =sumv/sumq
gen zl=unit/shareunit  //某国家某产品的质量水平
save E:\论文毕业设计\数据\质量计算\2009质量水平.dta,replace
use E:\论文毕业设计\数据\dta\2009有x有产品技术复杂度.dta,clear
merge m:1 hs6 i using E:\论文毕业设计\数据\质量计算\2009质量水平.dta
drop _merge
keep if i == 156 //只保留中国的出口数据
save E:\论文毕业设计\数据\质量计算\2009中国质量水平.dta,replace
*匹配VSS
*先匹配行业 
use E:\论文毕业设计\数据\质量计算\2009中国质量水平.dta,clear
merge n:1 hs6 using E:\论文毕业设计\数据\数据匹配\国家行业匹配匹配.dta
drop _merge 
*再匹配VSS
merge n:1 io t using  E:\论文毕业设计\数据\数据匹配\VSS匹配.dta   //匹配产品VSS水平
drop _merge
*************计算国内技术复杂度**************
*产品层面
replace vss = 0 if vss == .  //将没有VSS的产品设为1 参照刘琳和盛斌（2017）
gen NEW_prody=(zl^0.2)*(1-vss)*prody
drop if hs6 == .
save E:\论文毕业设计\数据\dta\2009产品国内技术复杂度.dta,replace
*国家层面
gen NEW_expy=x*NEW_prody
collapse (sum) NEW_expy,by(i t)
save E:\论文毕业设计\数据\dta\2009国家国内技术复杂度.dta,replace

*2010年
use  E:\论文毕业设计\数据\dta\2010.dta,clear
collapse (sum) v q ,by(hs6 i)
rename v sumv   //某国某产品出口总价值
rename q sumq   //某国某产品出口总数量
save E:\论文毕业设计\数据\质量计算\2010国家总量总价.dta,replace
collapse (sum) sumv ,by(hs6)
rename sumv sjallv //计算某产品的世界出口总额
save E:\论文毕业设计\数据\质量计算\2010世界某产品出口总价.dta,replace
use E:\论文毕业设计\数据\质量计算\2010国家总量总价.dta,clear
merge m:1 hs6 using E:\论文毕业设计\数据\质量计算\2010世界某产品出口总价.dta
drop _merge
gen share = sumv/sjallv //某国某产品占世界出口份额
gen unit =sumv/sumq
gen shareunit=share*unit  //份额*单价
collapse (sum) shareunit ,by(hs6)
merge 1:m hs6 using E:\论文毕业设计\数据\质量计算\2010国家总量总价.dta
drop _merge
gen unit =sumv/sumq
gen zl=unit/shareunit  //某国家某产品的质量水平
save E:\论文毕业设计\数据\质量计算\2010质量水平.dta,replace
use E:\论文毕业设计\数据\dta\2010有x有产品技术复杂度.dta,clear
merge m:1 hs6 i using E:\论文毕业设计\数据\质量计算\2010质量水平.dta
drop _merge
keep if i == 156 //只保留中国的出口数据
save E:\论文毕业设计\数据\质量计算\2010中国质量水平.dta,replace
*匹配VSS
*先匹配行业 
use E:\论文毕业设计\数据\质量计算\2010中国质量水平.dta,clear
merge n:1 hs6 using E:\论文毕业设计\数据\数据匹配\国家行业匹配匹配.dta
drop _merge 
*再匹配VSS
merge n:1 io t using  E:\论文毕业设计\数据\数据匹配\VSS匹配.dta   //匹配产品VSS水平
drop _merge
*************计算国内技术复杂度**************
*产品层面
replace vss = 0 if vss == .  //将没有VSS的产品设为1 参照刘琳和盛斌（2017）
gen NEW_prody=(zl^0.2)*(1-vss)*prody
drop if hs6 == .
save E:\论文毕业设计\数据\dta\2010产品国内技术复杂度.dta,replace
*国家层面
gen NEW_expy=x*NEW_prody
collapse (sum) NEW_expy,by(i t)
save E:\论文毕业设计\数据\dta\2010国家国内技术复杂度.dta,replace

*2011年
use  E:\论文毕业设计\数据\dta\2011.dta,clear
collapse (sum) v q ,by(hs6 i)
rename v sumv   //某国某产品出口总价值
rename q sumq   //某国某产品出口总数量
save E:\论文毕业设计\数据\质量计算\2011国家总量总价.dta,replace
collapse (sum) sumv ,by(hs6)
rename sumv sjallv //计算某产品的世界出口总额
save E:\论文毕业设计\数据\质量计算\2011世界某产品出口总价.dta,replace
use E:\论文毕业设计\数据\质量计算\2011国家总量总价.dta,clear
merge m:1 hs6 using E:\论文毕业设计\数据\质量计算\2011世界某产品出口总价.dta
drop _merge
gen share = sumv/sjallv //某国某产品占世界出口份额
gen unit =sumv/sumq
gen shareunit=share*unit  //份额*单价
collapse (sum) shareunit ,by(hs6)
merge 1:m hs6 using E:\论文毕业设计\数据\质量计算\2011国家总量总价.dta
drop _merge
gen unit =sumv/sumq
gen zl=unit/shareunit  //某国家某产品的质量水平
save E:\论文毕业设计\数据\质量计算\2011质量水平.dta,replace
use E:\论文毕业设计\数据\dta\2011有x有产品技术复杂度.dta,clear
merge m:1 hs6 i using E:\论文毕业设计\数据\质量计算\2011质量水平.dta
drop _merge
keep if i == 156 //只保留中国的出口数据
save E:\论文毕业设计\数据\质量计算\2011中国质量水平.dta,replace
*匹配VSS
*先匹配行业 
use E:\论文毕业设计\数据\质量计算\2011中国质量水平.dta,clear
merge n:1 hs6 using E:\论文毕业设计\数据\数据匹配\国家行业匹配匹配.dta
drop _merge 
*再匹配VSS
merge n:1 io t using  E:\论文毕业设计\数据\数据匹配\VSS匹配.dta   //匹配产品VSS水平
drop _merge
*************计算国内技术复杂度**************
*产品层面
replace vss = 0 if vss == .  //将没有VSS的产品设为1 参照刘琳和盛斌（2017）
gen NEW_prody=(zl^0.2)*(1-vss)*prody
drop if hs6 == .
save E:\论文毕业设计\数据\dta\2011产品国内技术复杂度.dta,replace
*国家层面
gen NEW_expy=x*NEW_prody
collapse (sum) NEW_expy,by(i t)
save E:\论文毕业设计\数据\dta\2011国家国内技术复杂度.dta,replace

*2012年
use  E:\论文毕业设计\数据\dta\2012.dta,clear
collapse (sum) v q ,by(hs6 i)
rename v sumv   //某国某产品出口总价值
rename q sumq   //某国某产品出口总数量
save E:\论文毕业设计\数据\质量计算\2012国家总量总价.dta,replace
collapse (sum) sumv ,by(hs6)
rename sumv sjallv //计算某产品的世界出口总额
save E:\论文毕业设计\数据\质量计算\2012世界某产品出口总价.dta,replace
use E:\论文毕业设计\数据\质量计算\2012国家总量总价.dta,clear
merge m:1 hs6 using E:\论文毕业设计\数据\质量计算\2012世界某产品出口总价.dta
drop _merge
gen share = sumv/sjallv //某国某产品占世界出口份额
gen unit =sumv/sumq
gen shareunit=share*unit  //份额*单价
collapse (sum) shareunit ,by(hs6)
merge 1:m hs6 using E:\论文毕业设计\数据\质量计算\2012国家总量总价.dta
drop _merge
gen unit =sumv/sumq
gen zl=unit/shareunit  //某国家某产品的质量水平
save E:\论文毕业设计\数据\质量计算\2012质量水平.dta,replace
use E:\论文毕业设计\数据\dta\2012有x有产品技术复杂度.dta,clear
merge m:1 hs6 i using E:\论文毕业设计\数据\质量计算\2012质量水平.dta
drop _merge
keep if i == 156 //只保留中国的出口数据
save E:\论文毕业设计\数据\质量计算\2012中国质量水平.dta,replace
*匹配VSS
*先匹配行业 
use E:\论文毕业设计\数据\质量计算\2012中国质量水平.dta,clear
merge n:1 hs6 using E:\论文毕业设计\数据\数据匹配\国家行业匹配匹配.dta
drop _merge 
*再匹配VSS
merge n:1 io t using  E:\论文毕业设计\数据\数据匹配\VSS匹配.dta   //匹配产品VSS水平
drop _merge
*************计算国内技术复杂度**************
*产品层面
replace vss = 0 if vss == .  //将没有VSS的产品设为1 参照刘琳和盛斌（2017）
gen NEW_prody=(zl^0.2)*(1-vss)*prody
drop if hs6 == .
save E:\论文毕业设计\数据\dta\2012产品国内技术复杂度.dta,replace
*国家层面
gen NEW_expy=x*NEW_prody
collapse (sum) NEW_expy,by(i t)
save E:\论文毕业设计\数据\dta\2012国家国内技术复杂度.dta,replace

*2013年
use  E:\论文毕业设计\数据\dta\2013.dta,clear
collapse (sum) v q ,by(hs6 i)
rename v sumv   //某国某产品出口总价值
rename q sumq   //某国某产品出口总数量
save E:\论文毕业设计\数据\质量计算\2013国家总量总价.dta,replace
collapse (sum) sumv ,by(hs6)
rename sumv sjallv //计算某产品的世界出口总额
save E:\论文毕业设计\数据\质量计算\2013世界某产品出口总价.dta,replace
use E:\论文毕业设计\数据\质量计算\2013国家总量总价.dta,clear
merge m:1 hs6 using E:\论文毕业设计\数据\质量计算\2013世界某产品出口总价.dta
drop _merge
gen share = sumv/sjallv //某国某产品占世界出口份额
gen unit =sumv/sumq
gen shareunit=share*unit  //份额*单价
collapse (sum) shareunit ,by(hs6)
merge 1:m hs6 using E:\论文毕业设计\数据\质量计算\2013国家总量总价.dta
drop _merge
gen unit =sumv/sumq
gen zl=unit/shareunit  //某国家某产品的质量水平
save E:\论文毕业设计\数据\质量计算\2013质量水平.dta,replace
use E:\论文毕业设计\数据\dta\2013有x有产品技术复杂度.dta,clear
merge m:1 hs6 i using E:\论文毕业设计\数据\质量计算\2013质量水平.dta
drop _merge
keep if i == 156 //只保留中国的出口数据
save E:\论文毕业设计\数据\质量计算\2013中国质量水平.dta,replace
*匹配VSS
*先匹配行业 
use E:\论文毕业设计\数据\质量计算\2013中国质量水平.dta,clear
merge n:1 hs6 using E:\论文毕业设计\数据\数据匹配\国家行业匹配匹配.dta
drop _merge 
*再匹配VSS
merge n:1 io t using  E:\论文毕业设计\数据\数据匹配\VSS匹配.dta   //匹配产品VSS水平
drop _merge
*************计算国内技术复杂度**************
*产品层面
replace vss = 0 if vss == .  //将没有VSS的产品设为1 参照刘琳和盛斌（2017）
gen NEW_prody=(zl^0.2)*(1-vss)*prody
drop if hs6 == .
save E:\论文毕业设计\数据\dta\2013产品国内技术复杂度.dta,replace
*国家层面
gen NEW_expy=x*NEW_prody
collapse (sum) NEW_expy,by(i t)
save E:\论文毕业设计\数据\dta\2013国家国内技术复杂度.dta,replace

*2014年
use  E:\论文毕业设计\数据\dta\2014.dta,clear
collapse (sum) v q ,by(hs6 i)
rename v sumv   //某国某产品出口总价值
rename q sumq   //某国某产品出口总数量
save E:\论文毕业设计\数据\质量计算\2014国家总量总价.dta,replace
collapse (sum) sumv ,by(hs6)
rename sumv sjallv //计算某产品的世界出口总额
save E:\论文毕业设计\数据\质量计算\2014世界某产品出口总价.dta,replace
use E:\论文毕业设计\数据\质量计算\2014国家总量总价.dta,clear
merge m:1 hs6 using E:\论文毕业设计\数据\质量计算\2014世界某产品出口总价.dta
drop _merge
gen share = sumv/sjallv //某国某产品占世界出口份额
gen unit =sumv/sumq
gen shareunit=share*unit  //份额*单价
collapse (sum) shareunit ,by(hs6)
merge 1:m hs6 using E:\论文毕业设计\数据\质量计算\2014国家总量总价.dta
drop _merge
gen unit =sumv/sumq
gen zl=unit/shareunit  //某国家某产品的质量水平
save E:\论文毕业设计\数据\质量计算\2014质量水平.dta,replace
use E:\论文毕业设计\数据\dta\2014有x有产品技术复杂度.dta,clear
merge m:1 hs6 i using E:\论文毕业设计\数据\质量计算\2014质量水平.dta
drop _merge
keep if i == 156 //只保留中国的出口数据
save E:\论文毕业设计\数据\质量计算\2014中国质量水平.dta,replace
*匹配VSS
*先匹配行业 
use E:\论文毕业设计\数据\质量计算\2014中国质量水平.dta,clear
merge n:1 hs6 using E:\论文毕业设计\数据\数据匹配\国家行业匹配匹配.dta
drop _merge 
*再匹配VSS
merge n:1 io t using  E:\论文毕业设计\数据\数据匹配\VSS匹配.dta   //匹配产品VSS水平
drop _merge
*************计算国内技术复杂度**************
*产品层面
replace vss = 0 if vss == .  //将没有VSS的产品设为1 参照刘琳和盛斌（2017）
gen NEW_prody=(zl^0.2)*(1-vss)*prody
drop if hs6 == .
save E:\论文毕业设计\数据\dta\2014产品国内技术复杂度.dta,replace
*国家层面
gen NEW_expy=x*NEW_prody
collapse (sum) NEW_expy,by(i t)
save E:\论文毕业设计\数据\dta\2014国家国内技术复杂度.dta,replace


*合并产品层面出口国内技术复杂度
use E:\论文毕业设计\数据\dta\2000产品国内技术复杂度.dta,clear
append using E:\论文毕业设计\数据\dta\2001产品国内技术复杂度.dta
append using E:\论文毕业设计\数据\dta\2002产品国内技术复杂度.dta
append using E:\论文毕业设计\数据\dta\2003产品国内技术复杂度.dta
append using E:\论文毕业设计\数据\dta\2004产品国内技术复杂度.dta
append using E:\论文毕业设计\数据\dta\2005产品国内技术复杂度.dta
append using E:\论文毕业设计\数据\dta\2006产品国内技术复杂度.dta
append using E:\论文毕业设计\数据\dta\2007产品国内技术复杂度.dta
append using E:\论文毕业设计\数据\dta\2008产品国内技术复杂度.dta
append using E:\论文毕业设计\数据\dta\2009产品国内技术复杂度.dta
append using E:\论文毕业设计\数据\dta\2010产品国内技术复杂度.dta
append using E:\论文毕业设计\数据\dta\2011产品国内技术复杂度.dta
append using E:\论文毕业设计\数据\dta\2012产品国内技术复杂度.dta
append using E:\论文毕业设计\数据\dta\2013产品国内技术复杂度.dta
append using E:\论文毕业设计\数据\dta\2014产品国内技术复杂度.dta 
save E:\论文毕业设计\数据\dta\2000-2014产品国内技术复杂度.dta,replace

*合并国家层面出口技术复杂度
use E:\论文毕业设计\数据\dta\2000国家国内技术复杂度.dta,clear
append using  E:\论文毕业设计\数据\dta\2001国家国内技术复杂度.dta
append using  E:\论文毕业设计\数据\dta\2002国家国内技术复杂度.dta
append using  E:\论文毕业设计\数据\dta\2003国家国内技术复杂度.dta
append using  E:\论文毕业设计\数据\dta\2004国家国内技术复杂度.dta
append using  E:\论文毕业设计\数据\dta\2005国家国内技术复杂度.dta
append using  E:\论文毕业设计\数据\dta\2006国家国内技术复杂度.dta
append using  E:\论文毕业设计\数据\dta\2007国家国内技术复杂度.dta
append using  E:\论文毕业设计\数据\dta\2008国家国内技术复杂度.dta
append using  E:\论文毕业设计\数据\dta\2009国家国内技术复杂度.dta
append using  E:\论文毕业设计\数据\dta\2010国家国内技术复杂度.dta
append using  E:\论文毕业设计\数据\dta\2011国家国内技术复杂度.dta
append using  E:\论文毕业设计\数据\dta\2012国家国内技术复杂度.dta
append using  E:\论文毕业设计\数据\dta\2013国家国内技术复杂度.dta
append using  E:\论文毕业设计\数据\dta\2014国家国内技术复杂度.dta
drop if i == .
save E:\论文毕业设计\数据\dta\2000-2014国家国内技术复杂度.dta,replace

***************计算中国对RCEP国家出口的整体技术复杂度
use E:\论文毕业设计\数据\dta\2000-2014出口RCEP国家.dta,clear
collapse (sum) v,by(i t)
rename v allv   //中国一年的出口总额
save E:\论文毕业设计\数据\dta\2000-2014出口RCEP国家出口总额.dta,replace
use E:\论文毕业设计\数据\dta\2000-2014出口RCEP国家.dta,clear
merge m:1 t hs6 using E:\论文毕业设计\数据\dta\2000-2012年产品技术复杂度.dta
drop if _merge == 2
drop _merge
merge m:1 t i using E:\论文毕业设计\数据\dta\2000-2014出口RCEP国家出口总额.dta
drop _merge 
gen x = v/allv
gen expy=x*prody
collapse (sum) expy ,by(t j)
save E:\论文毕业设计\数据\dta\2000-2014出口RCEP国家的技术复杂度.dta,replace
xtset j t
reshape wide expy,i(t) j(j)


***************************************************************************
*整体技术复杂度跨国比较（RCEP）
use E:\论文毕业设计\数据\dta\2000-2014国家层面技术复杂度.dta,clear
keep if i==156 |i == 36 |i == 96 |i == 116 |i == 699 |i == 392 |i == 410 |i == 418 | ///
 i == 458 |i == 104 |i == 554 |i == 608 |i == 702 |i == 764 |i == 704 | i == 360
*匹配国家
merge m:1 i using  E:\论文毕业设计\数据\数据匹配\国家匹配111.dta 
drop _merge
drop country iso3
reshape wide expy,i(t) j(i)
*图1  非东盟国家的比较
label variable expy36 "AUS"
label variable expy156 "CHN"
label variable expy699 "IND"
label variable expy392 "JPN"
label variable expy410 "KOR"
label variable expy554 "NZL"
rename expy36 AUS
rename expy156 CHN
rename expy699 IND
rename expy392 JPN
rename expy410 KOR
rename expy554 NZL
twoway line AUS CHN IND JPN KOR NZL t //6个国家的图
*图2  东盟国家的图
label variable expy96 "BRN"
label variable expy116 "KHM"
label variable expy360 "IDN"
label variable expy418 "LAO"
label variable expy458 "MYS"
label variable expy104 "MMR"
label variable expy608 "PHL"
label variable expy702 "SGP"
label variable expy764 "THA"
label variable expy704 "VNM"
rename expy96 BRN
rename expy116 KHM
rename expy360 IDN
rename expy418 LAO
rename expy458 MYS
rename expy104 MMR
rename expy608 PHL
rename expy702 SGP
rename expy764 THA
rename expy704 VNM
twoway line BRN KHM IDN LAO MYS MMR PHL SGP THA VNM t //东盟个国家的图
*图3 中国对RCEP成员国家出口的技术复杂度
use E:\论文毕业设计\数据\dta\2000-2014出口RCEP国家的技术复杂度.dta,clear
xtset j t
reshape wide expy,i(t) j(j)
label variable expy36 "AUS"
label variable expy699 "IND"
label variable expy392 "JPN"
label variable expy410 "KOR"
label variable expy554 "NZL"
label variable expy96 "BRN"
label variable expy116 "KHM"
label variable expy360 "IDN"
label variable expy418 "LAO"
label variable expy458 "MYS"
label variable expy104 "MMR"
label variable expy608 "PHL"
label variable expy702 "SGP"
label variable expy764 "THA"
label variable expy704 "VNM"
rename expy36 AUS
rename expy699 IND
rename expy392 JPN
rename expy410 KOR
rename expy554 NZL
rename expy96 BRN
rename expy116 KHM
rename expy360 IDN
rename expy418 LAO
rename expy458 MYS
rename expy104 MMR
rename expy608 PHL
rename expy702 SGP
rename expy764 THA
rename expy704 VNM
twoway line AUS IND JPN KOR NZL t //非东盟国家
*图4
twoway line BRN KHM IDN LAO MYS MMR PHL SGP THA VNM t //东盟国家的图
*图5.中国整体与国内技术复杂度
use E:\论文毕业设计\数据\dta\2000-2014国家层面技术复杂度.dta,clear
keep if i == 156
merge m:1 t i using  E:\论文毕业设计\数据\dta\2000-2014国家国内技术复杂度.dta
drop _merge
gen chaju=expy-NEW_expy
twoway line expy NEW_expy chaju t 


*************出口持续时间数据处理
use E:\论文毕业设计\数据\dta\2000-2014.dta,clear
keep if i == 156
keep if j == 36 |j == 96 |j == 116 |j == 699 |j == 392 |j == 410 |j == 418 | ///
j == 458 |j == 104 |j == 554 |j == 608 |j == 702 |j == 764 |j == 704 |j == 360
save  E:\论文毕业设计\数据\dta\2000-2014出口RCEP国家.dta,replace  // 2000-2014年出口RCEP国家的数据

use E:\论文毕业设计\数据\dta\2000-2014出口RCEP国家.dta,clear
merge m:1 j using E:\论文毕业设计\数据\数据匹配\国家匹配111.dta  //匹配国家
drop if i == .
tostring hs6,replace
gen id = iso3+hs6
drop _merge
duplicates drop id t,force
keep v id t
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
//分段
generate spellid2=id+"0"+strofreal(spid2)
generate fail2=0
replace fail2=1 if v==0
gen iso3=substr(id,1,3)
gen hs6=substr(id,4,.)
save E:\论文毕业设计\数据\生存分析\生存分析总.dta,replace
use E:\论文毕业设计\数据\生存分析\生存分析总.dta,clear
destring hs6,gen(hs)
*匹配国家组
merge m:1 iso3 using E:\论文毕业设计\数据\数据匹配\国家匹配111.dta
drop if _merge == 2
drop _merge j
*匹配OECD产品分类
merge m:m hs using E:\论文毕业设计\数据\数据匹配\oecdhs.dta
drop if t == .
replace oecd = 0 if oecd == .
drop _merge 
save E:\论文毕业设计\数据\生存分析\生存分析.dta,replace

************生存分析
use E:\论文毕业设计\数据\生存分析\生存分析.dta,clear
sort id t
drop if birthyr==2000
stset t,id(spellid2) f(fail2) origin(time birthyr)
sts graph            //图6
sts graph,failure    //图6
sts graph,by(recp)   //图8
sts graph,by(oecd)   //图9
*计算中位数和均值
stci
stci,rmean
stci ,by(recp) median 
stci ,by(oecd) rmean  
stci ,by(recp) median 
stci ,by(oecd) rmean  
*计算生存率
sts list                         //全部
sts list if recp   ==  1         //东盟国家
sts list if recp   ==  2         //非东盟国家
sts list if oecd == 1            //高技术
sts list if oecd == 2            //中技术
sts list if oecd == 3            //低技术
sts list if oecd == 4            //其他产品


******************************实证分析**************************************
*只计算第一个出口持续时间段
*匹配出口产品国内技术复杂度
use E:\论文毕业设计\数据\生存分析\生存分析.dta,clear
drop birthyr spellid2 fail2 hs6 recp
keep if spid == 1  //只保留第一段时间
*匹配收入国家
merge n:1 iso3 using E:\论文毕业设计\数据\数据匹配\收入国家匹配.dta
drop if t == .
drop _merge
*匹配出口产品国内技术复杂度
rename hs hs6
merge n:1 hs6 t using E:\论文毕业设计\数据\技术复杂度\出口国内技术复杂度.dta
keep if _merge == 3
drop _merge
******处理出口持续时间
duplicates list
egen var=group(id)
xtset var t

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

gen lag14=L1.lag13
gen a14="14" if lag14 != .

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
destring a14 ,gen(b14)
egen dura = rowmax(b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14)
gen duration=dura+1
replace duration=1 if duration == .
drop lag1-b14
drop dura
drop if v == 0
*匹配KOR（基础设施）
merge n:1 iso3 t using E:\论文毕业设计\数据\KOR\kor.dta
drop if v == .
drop _merge

*匹配进口额
merge n:1 iso3 t using E:\论文毕业设计\数据\进口规模\进口.dta
drop _merge

*匹配开放度
merge n:1 iso3 t using E:\论文毕业设计\数据\开放度\open.dta
drop _merge

*匹配人口
merge n:1 iso3 t using E:\论文毕业设计\数据\人口\pop.dta
drop _merge

*匹配金融发展水平
merge n:1  t using E:\论文毕业设计\数据\私人信贷占GDP\金融发展水平.dta
drop _merge

*匹配研发
merge n:1  t using E:\论文毕业设计\数据\研发占GDP比重\研发占GDP.dta
drop _merge

*匹配制度质量
merge n:1 iso3 t using E:\论文毕业设计\数据\制度质量\制度质量.dta
drop _merge

*匹配人力资本
merge n:1  t using E:\论文毕业设计\数据\中学教育入学率\中学入学率
drop _merge

*匹配金融危机
merge n:1  t using E:\论文毕业设计\数据\金融危机\危机.dta
drop _merge
drop if v == .

save  E:\论文毕业设计\数据\回归基础数据1,replace


***************************************************************************
***************************************************************************
***************************************************************************
***************************************************************************
***************************************************************************
***************************************************************************
******************************实证分析*************************************
use  E:\论文毕业设计\数据\回归基础数据1,clear
replace rd=rd*100
replace vss=vss*100
gen lnNEW_prody = ln(NEW_prody )
gen lnduration  = ln(duration+1)
gen lnkor       = ln(kor )
gen lnimport    = ln(import )
gen lnopen      = ln(open )
gen lnpop       = ln(pop )
gen lnfin       = ln(fin )
gen lnrd        = ln(rd )
gen lnoverall   = ln(overall)
gen lnvss = ln(vss)
drop if hs6 == .
xtset var t
 drop if t == 2000
*****基准模型回归
xi:xtreg lnNEW_prody lnduration lnkor lnimport lnopen lnpop lnfin lnrd  lnvss wj i.iso3 i.t ,fe
est store m11
xi:xtreg lnNEW_prody lnduration lnkor lnimport lnopen lnpop lnfin lnrd  lnvss wj i.iso3 i.t,re
est store m12
xi:ivreg2 lnNEW_prody (lnduration=L.lnduration) lnkor lnimport lnopen lnpop lnfin lnrd  lnvss wj i.t,gmm2s robust
est store m13
outreg2 [m11  m12 m13] using 1.xls,replace

****分收入国家
*高收入			
xtreg lnNEW_prody lnduration lnkor lnimport lnopen lnpop lnfin lnrd  lnvss wj  if income == 1 ,re
est store m21
ivreg2 lnNEW_prody (lnduration=L.lnduration) lnkor lnimport lnopen lnpop lnfin lnrd  lnvss wj if income == 1,gmm2s robust
est store m22
*中高收入		
xtreg lnNEW_prody lnduration lnkor lnimport lnopen lnpop lnfin lnrd  lnvss wj  if income == 2,re
est store m23
ivreg2 lnNEW_prody (lnduration=L.lnduration) lnkor lnimport lnopen lnpop lnfin lnrd  lnvss wj if income == 2 ,gmm2s robust
est store m24
*中低收入
xtreg lnNEW_prody lnduration lnkor lnimport lnopen lnpop lnfin lnrd  lnvss wj  if income == 3,re
est store m25
ivreg2 lnNEW_prody (lnduration=L.lnduration) lnkor lnimport lnopen lnpop lnfin lnrd  lnvss wj if income == 3 ,gmm2s robust
est store m26
outreg2 [m21 m22 m23 m24 m25 m26] using 2.xls,replace

****分技术产品
*高技术产品	
set more off		
xtreg lnNEW_prody lnduration lnkor lnimport lnopen lnpop lnfin lnrd  lnvss wj  if oecd == 1 ,re
est store m31
ivreg2 lnNEW_prody (lnduration=L.lnduration) lnkor lnimport lnopen lnpop lnfin lnrd  lnvss wj if oecd == 1,gmm2s robust
est store m32
*中技术产品		
xtreg lnNEW_prody lnduration lnkor lnimport lnopen lnpop lnfin lnrd  lnvss wj  if oecd == 2,re
est store m33
ivreg2 lnNEW_prody (lnduration=L.lnduration) lnkor lnimport lnopen lnpop lnfin lnrd  lnvss wj if oecd == 2 ,gmm2s robust
est store m34
*低技术产品
xtreg lnNEW_prody lnduration lnkor lnimport lnopen lnpop lnfin lnrd  lnvss wj  if oecd == 3,re
est store m35
ivreg2 lnNEW_prody (lnduration=L.lnduration) lnkor lnimport lnopen lnpop lnfin lnrd  lnvss wj if oecd == 3 ,gmm2s robust
est store m36
outreg2 [m31 m32 m33 m34 m35 m36] using 3.xls,replace














*SYS-GMM
xtabond2 lnNEW_prody L(1/2).lnNEW_prody lnduration lnkor lnimport lnopen lnpop lnfin lnrd lnoverall lnvss, gmm(lnduration,lag(2 3)) robust































