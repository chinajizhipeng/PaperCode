use  E:\����ѧϰ\����\���ڳ���ʱ���ӳ������ڳ���������������\����\�ع�����\�ع����б���.dta,clear
tostring t,replace
gen idd = impotergoods + t
merge n:1 idd using E:\����ѧϰ\����\���ڳ���ʱ���ӳ������ڳ���������������\idd.dta 
keep  if _merge == 3
destring t ,gen(year)
duplicates drop impotergood year,force
xtset impotergood year
****���ӱ���
*����Σ��
gen crisis = 0
replace crisis = 1 if year > 2008

*�˾�GDP
drop id
drop _merge
rename iso3 id
merge n:1 id year using E:\����ѧϰ\����\���ڳ���ʱ���ӳ������ڳ���������������\����\�˾�GDP\rgdp.dta
keep if _merge == 3
drop _merge
gen lnrdp = ln(rdp)
save E:\����ѧϰ\����\���ڳ���ʱ���ӳ������ڳ���������������\����\�ع�����\�޸Ļع�.dta,replace
*��Ʒ���ڶ�
gen L_export = L.lnexport

****�ع�
set more off
*fe
xtreg lnnewprody lnduration lnunit lnvs  fta lnhamcap lnopen  lnrdp  lnexport ,fe 
est store m1
*re
xtreg lnnewprody lnduration lnunit lnvs  fta lnhamcap lnopen  lnrdp lnexport ,re
est store m2
*2SLS
ivreg2 lnnewprody (lnduration=L.lnduration ) lnunit lnvs  fta lnhamcap lnopen lnrdp lnexport ,gmm2s robust
est store m3
outreg2 [m1  m2 m3 ] using 11��ع�.xls,replace

*�ڶ���ع�

*���������
set more off
xtreg lnnewprody lnduration lnunit lnvs  fta lnhamcap lnopen lnrdp  lnexport if ins == 1,fe 
est store m11
ivreg2 lnnewprody (lnduration=L.lnduration) lnunit lnvs  fta lnhamcap lnopen lnrdp  lnexport if ins == 1,gmm2s robust
est store m12

*���������
xtreg lnnewprody lnduration lnunit lnvs  fta lnhamcap lnopen lnrdp  lnexport if ins == 3 | ins == 4,fe 
est store m13
ivreg2 lnnewprody (lnduration=L.lnduration) lnunit lnvs  fta lnhamcap lnopen lnrdp  lnexport if ins == 3 | ins == 4,gmm2s robust
est store m14

*���������
xtreg lnnewprody lnduration lnunit lnvs  fta lnhamcap lnopen lnrdp  lnexport if ins == 2,fe 
est store m15
ivreg2 lnnewprody (lnduration=L.lnduration) lnunit lnvs  fta lnhamcap lnopen lnrdp  lnexport if ins == 2,gmm2s robust
est store m16

outreg2 [m11  m12 m13  m14 m15  m16] using �ڶ���.xls,replace

*������ع�
*�߼���
set more off
xtreg lnnewprody lnduration lnunit lnvs  fta lnhamcap lnopen lnrdp  lnexport if isictype == 1,fe 
est store m21
ivreg2 lnnewprody (lnduration=L.lnduration) lnunit lnvs  fta lnhamcap lnopen lnrdp  lnexport if isictype == 1,gmm2s robust
est store m22

*�м���
xtreg lnnewprody lnduration lnunit lnvs  fta lnhamcap lnopen lnrdp  lnexport if isictype == 2,fe 
est store m23
ivreg2 lnnewprody (lnduration=L.lnduration) lnunit lnvs  fta lnhamcap lnopen lnrdp  lnexport if isictype == 2,gmm2s robust
est store m24

*�͵ͼ���
xtreg lnnewprody lnduration lnunit lnvs  fta lnhamcap lnopen lnrdp  lnexport if isictype == 3,fe 
est store m25
ivreg2 lnnewprody (lnduration=L.lnduration) lnunit lnvs  fta lnhamcap lnopen lnrdp  lnexport if isictype == 3,gmm2s robust
est store m26

outreg2 [m21  m22 m23  m24 m25  m26] using ������.xls,replace

*������ع�
*��ɾ��
*������ɾ������
use E:\����ѧϰ\����\���ڳ���ʱ���ӳ������ڳ���������������\����\�ع�����\�޸Ļع�.dta,clear
duplicates drop impotergood year,force
xtset impotergood year
ivreg2 lnnewprody (lnduration=L.lnduration) lnunit lnvs  fta lnhamcap lnopen lnrdp  lnexport ,gmm2s robust
est store m41
outreg2 [m41] using ��41.xls,replace

*ɾ����һ��������
keep year exports impotergoods
rename export v
rename impotergoods id
rename year t
duplicates drop id t,force
reshape wide v,i(id) j(t)
reshape long v,i(id) j(t)  //��������
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
drop if birthyr==t&v==0 //��ʼ����趨

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
generate spellid2=id+"0"+strofreal(spid2)
generate fail2=0
replace fail2=1 if v==0 
drop if spid2 ==1
keep id t 
rename  id impotergoods
rename  t year
save E:\����ѧϰ\����\���ڳ���ʱ���ӳ������ڳ���������������\����\�ع�����\��һ��ʱ���ɾ����.dta,replace

*������һ��ʱ���
use E:\����ѧϰ\����\���ڳ���ʱ���ӳ������ڳ���������������\����\�ع�����\�޸Ļع�.dta,clear
merge 1:1  impotergoods year using E:\����ѧϰ\����\���ڳ���ʱ���ӳ������ڳ���������������\����\�ع�����\��һ��ʱ���ɾ����.dta
drop if _merge == 3
drop _merge
duplicates drop impotergood year,force

xtset impotergood year

*fe
xtreg lnnewprody lnduration lnunit lnvs  fta lnhamcap lnopen lnrdp  lnexport ,fe 
est store m42
*re
xtreg lnnewprody lnduration lnunit lnvs  fta lnhamcap lnopen lnrdp  lnexport ,re
est store m43
*2SLS
ivreg2 lnnewprody (lnduration=L.lnduration ) lnunit lnvs  fta lnhamcap lnopen  lnrdp  lnexport,gmm2s robust
est store m44
outreg2 [ m42  m43 m44 ] using 42��ع�.xls,replace

****ͳ���Ա���

use E:\����ѧϰ\����\���ڳ���ʱ���ӳ������ڳ���������������\����\�ع�����\�޸Ļع�.dta,clear
keep lnnewprody  lnduration lnunit lnvs  fta lnhamcap lnopen  lnrdp  lnexport
sum
