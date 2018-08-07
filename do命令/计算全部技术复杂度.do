 use E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\�������Ӷ�\���������.dta,clear
drop _merge  dva
collapse (sum) v, by(iso3 year)
tostring year,replace
gen iso3year=iso3+year
rename v X
save E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\�������Ӷ�\ȫ���������Ӷ�1.dta,replace


use E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\�������Ӷ�\���������.dta,clear
drop _merge  dva
tostring year,replace
gen iso3year=iso3+year
merge m:1 iso3year using E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\�������Ӷ�\ȫ���������Ӷ�1.dta

gen x = v/X 
collapse (sum) x, by(hs1996 year)
rename x x2
tostring hs1996,replace
gen hs1996year=hs1996+year
save E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\�������Ӷ�\ȫ����������2.dta,replace

use E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\�������Ӷ�\���������.dta,clear
drop _merge  dva
tostring year,replace
gen iso3year=iso3+year
tostring hs1996,replace
gen hs1996year=hs1996+year

merge m:1 iso3year using E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\�������Ӷ�\ȫ���������Ӷ�1.dta
drop _merge
merge m:1 hs1996year using E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\�������Ӷ�\ȫ����������2.dta

save E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\�������Ӷ�\ȫ��������3.dta,replace

use E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\�������Ӷ�\ȫ��������3.dta,clear
gen x=v/X
gen w=x/x2
gen wy=w*rgdp
collapse (sum) wy ,by(hs1996 year)  //��Ʒ���漼�����Ӷ�
rename wy prody
save E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\�������Ӷ�\ȫ���������ӶȲ�Ʒ����.dta,replace

use E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\�������Ӷ�\ȫ��������3,clear
merge n:1 year hs1996 using E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\�������Ӷ�\ȫ���������ӶȲ�Ʒ����.dta
drop _merge
gen p=v/X
gen expy=p*prody
collapse (sum) expy,by(iso3 year)
save E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\�������Ӷ�\ȫ���������Ӷȹ��Ҳ���.dta,replace
















