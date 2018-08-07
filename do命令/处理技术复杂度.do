use E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\��ݼ���\1998-2011.dta,clear
rename id iso3
destring hs6 ,gen(hs1996) force
merge m:m hs1996 using E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\���ݺϲ�\����ƥ��.dta  // ƥ������׼
drop _merge
decode isic2,gen (isic)
gen counsector=iso3+isic
rename t year
merge m:m counsector year using E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\VSS\dva.dta
drop if missing(isic2) 
drop _merge
replace dva=1 if dva==.             // ƥ��DVA

merge m:m iso3 year using E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\GDP\rgdp.dta   //ƥ��GDP
drop if missing(rgdp)              
drop _merge      //������������
save E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\�������Ӷ�\���������.dta

*���㼼�����Ӷ�
use E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\�������Ӷ�\���������.dta,clear
drop _merge      
gen bx=dva*v
collapse (sum) bx, by(hs1996 year)
rename bx jiazongbx1
save E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\�������Ӷ�\bs����1.dta,replace
use E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\�������Ӷ�\���������.dta,clear
drop _merge
merge m:1 hs1996 year using E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\�������Ӷ�\bs����1.dta
gen bx=dva*v
gen m1=bx/jiazongbx1
save E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\�������Ӷ�\��m1.dta,replace
collapse (sum) m1, by(iso3 year)
rename m1 m2 
save E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\�������Ӷ�\bs����2.dta,replace
use E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\�������Ӷ�\��m1.dta,clear
drop _merge
merge m:1 iso3 year using E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\�������Ӷ�\bs����2.dta
drop _merge
gen w=m1/m2
gen wrgdp=w*rgdp
collapse (sum) wrgdp,by(year hs1996)
rename wrgdp PRODY_NEW
save E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\�������Ӷ�\PRODY.dta,replace

use E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\�۸����\1999-2011��Ʒ����ˮƽ.dta,clear
destring hs6,gen (hs1996)
rename t year
merge 1:1 hs1996 year using E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\�������Ӷ�\PRODY.dta
gen qPRODY_NEW=(qk^0.2)*PRODY_NEW
drop _merge
drop if missing(qPRODY_NEW)
save  E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\�������Ӷ�\NEW_PRODY.dta,replace




