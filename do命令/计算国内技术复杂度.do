 use E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\�������Ӷ�\���������.dta,clear
gen bx=v*dva
collapse (sum) bx, by(iso3 year)
tostring year,replace
gen iso3year=iso3+year
rename bx BX  //һ����������ֵȫ��
save E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\�������Ӷ�\���ڼ������Ӷ�1.dta,replace


use E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\�������Ӷ�\���������.dta,clear
drop  _merge
tostring year,replace
gen iso3year=iso3+year
merge m:1 iso3year using E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\�������Ӷ�\���ڼ������Ӷ�1.dta

gen bx=v*dva
gen bx1 = bx/BX  //��һ����ֵ
collapse (sum) bx1, by(hs1996 year)
rename bx1 bx2  //ĳ��Ʒȫ������ռ��֮��
tostring hs1996,replace
gen hs1996year=hs1996+year
save E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\�������Ӷ�\���ڼ������Ӷ�2.dta,replace

use E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\�������Ӷ�\���������.dta,clear
tostring year,replace
gen iso3year=iso3+year
tostring hs1996,replace
gen hs1996year=hs1996+year
drop _merge
merge m:1 iso3year using E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\�������Ӷ�\���ڼ������Ӷ�1.dta
drop _merge
merge m:1 hs1996year using E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\�������Ӷ�\���ڼ������Ӷ�2.dta

save E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\�������Ӷ�\���ڼ������Ӷ�3.dta,replace

use E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\�������Ӷ�\���ڼ������Ӷ�3.dta,clear
gen bx=v*dva
gen x=bx/BX
gen w=x/bx2
gen wy=w*rgdp
collapse (sum) wy ,by(hs1996 year)  //��Ʒ���漼�����Ӷ�
rename wy NEWprody
save E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\�������Ӷ�\���ڼ������ӶȲ�Ʒ����.dta,replace

use E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\�۸����\1999-2011��Ʒ����ˮƽ.dta,clear
destring hs6 ,gen(hs1996)
tostring hs1996,replace
rename t year
tostring year ,replace
merge m:m hs1996 year using E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\�������Ӷ�\���ڼ������ӶȲ�Ʒ����.dta
gen qPRODY_NEW=(qk^0.2)*NEWprody
drop _merge
drop if missing(NEWprody)
save  E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\�������Ӷ�\NEWPRODY.dta,replace

use E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\�������Ӷ�\���ڼ������ӶȲ�Ʒ����.dta,clear
use E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\�۸����\1999-2011��Ʒ����ˮƽ.dta,clear
destring hs6,gen (hs1996)
tostring hs1996,replace
rename t year
tostring year,replace
merge 1:1 hs1996 year using E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\�������Ӷ�\���ڼ������ӶȲ�Ʒ����.dta
gen qPRODYNEW=(qk^0.2)*PRODY_NEW
drop _merge
drop if missing(qPRODYNEW)
save  E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\�������Ӷ�\NEWPRODY.dta,replace
use E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\�������Ӷ�\NEWPRODY.dta,clear
merge 1:1 hs1996 year using E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\�������Ӷ�\���ڼ������ӶȲ�Ʒ����.dta


use E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\�������Ӷ�\���ڼ������Ӷ�3,clear
drop _merge
merge n:1 year hs1996 using E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\�������Ӷ�\NEWPRODY.dta
gen bx=v*dva
gen p=bx/BX
gen Nexpy=p*NEWprody
collapse (sum) Nexpy,by(iso3 year)
save E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\�������Ӷ�\���ڼ������Ӷȹ��Ҳ���.dta,replace
    