infile str10 v1 str10 v2 str10 v3 str10 v4 str10 v5 using isic.txt,clear
encode v1,gen (cpc) 
encode v3,gen (isic)
drop v1 v2 v3 v4 v5
drop in 1
save cpcisic.dta,replace  // 处理ISIC-CPC

infile str10 v1 str10 v2 str10 v3 str10 v4 using hs1996.txt,clear
encode v1,gen (cpc)
encode v3,gen (hs1996)
drop v1 v2 v3 v4 
drop in 1
save cpchs1996.dta ,replace //处理HS1996-ISIC

use cpchs1996.dta,clear
merge m:m cpc using cpcisic.dta,update replace
drop cpc _merge
save hs1996isic.dta,replace  //匹配HS1996-ISIC



