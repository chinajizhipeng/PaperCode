*计算中国出口产品的TC指数
*****************出口
 clear
 set more off 
 foreach file in 1996 1997 1998 1999 {
   clear
   insheet using E:\sci\hs96-6位数\hs96-6位数（ex1996-2015）\hs`file'.csv
   drop  qtytoken tradeflow quantity
   rename reporteriso3 i
   rename partneriso3 j
   rename productcode hs96
   rename year t
   rename tradevalue v
   collapse (sum) v,by(hs96 t)
   rename v ex
   save E:\sci\中国产品的竞争力指数\出口\hs`file'.dta,replace
   }
   clear
 set more off 
 foreach file in 2000 2001 2002 2003 2004 2005 2006 2007 2008 2009 2010 2011 2012 2013 2014 2015{
   clear
   insheet using E:\sci\hs96-6位数\hs96-6位数（ex1996-2015）\hs`file'.csv
   drop  qtytoken tradeflow quantity
   rename reporteriso3 i
   rename partneriso3 j
   tostring productcode,replace
   gen hss = strlen(productcode) 
   rename year t
   gen hs96 ="0"+productcode if hss == 5
   replace hs96 = productcode if hss == 6
   drop  productcode hss
   rename tradevalue v
   collapse (sum) v,by(hs96 t)
   rename v ex
   save E:\sci\中国产品的竞争力指数\出口\hs`file'.dta,replace
   }
   *合并
clear 
set more off 
use E:\sci\中国产品的竞争力指数\出口\hs1996.dta,clear
foreach file in  1997 1998 1999 2000 2001 2002 2003 2004 2005 2006 2007 2008 2009 2010 2011 2012 2013 2014 2015{
 append using E:\sci\中国产品的竞争力指数\出口\hs`file'.dta
 }
 save E:\sci\中国产品的竞争力指数\出口\1996-2015.dta
 **************进口
 *1996-1999
  clear
 set more off 
 foreach file in 1996 1997 1998 1999  {
   clear
   insheet using E:\sci\hs96-6位数\im\hs`file'.csv
   drop  qtytoken tradeflow quantity
   rename reporteriso3 i
   rename partneriso3 j
   rename productcode hs96
   rename year t
   rename tradevalue v
   collapse (sum) v,by(hs96 t)
   rename v im
   save E:\sci\中国产品的竞争力指数\进口\hs`file'.dta,replace
  }
  *2000-2015
 clear
 set more off 
 foreach file in 2000 2001 2002 2003 2004 2005 2006 2007 2008 2009 2010 2011 2012 2013 2014 2015{
   clear
   insheet using E:\sci\hs96-6位数\im\hs`file'.csv
   drop  qtytoken tradeflow quantity
   rename reporteriso3 i
   rename partneriso3 j
   tostring productcode,replace
   gen hss = strlen(productcode) 
   rename year t
   gen hs96 ="0"+productcode if hss == 5
   replace hs96 = productcode if hss == 6
   drop  productcode hss
   rename tradevalue v
   collapse (sum) v,by(hs96 t)
   rename v im
   save E:\sci\中国产品的竞争力指数\进口\hs`file'.dta,replace
   }
   *合并
   clear 
set more off 
use E:\sci\中国产品的竞争力指数\进口\hs1996.dta,clear
foreach file in  1997 1998 1999 2000 2001 2002 2003 2004 2005 2006 2007 2008 2009 2010 2011 2012 2013 2014 2015{
 append using E:\sci\中国产品的竞争力指数\进口\hs`file'.dta
 }
 save E:\sci\中国产品的竞争力指数\进口\1996-2015.dta,replace
  *匹配
  use E:\sci\中国产品的竞争力指数\出口\1996-2015.dta,clear
   merge 1:1 hs96 t using E:\sci\中国产品的竞争力指数\进口\1996-2015.dta
   drop _merge
   replace ex = 0 if ex == .
   replace im = 0 if im == .
 gen tc=(ex-im)/(ex+im)
drop ex im
save E:\sci\中国产品的竞争力指数\TC.dta,replace
