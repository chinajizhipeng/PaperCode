 use E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\���ڳ���ʱ��\�г���ʱ��.dta,clear
 rename t year
merge m:m hs6 year using E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\�������Ӷ�\NEW_PRODY.dta
drop iso3 iso3hs6j  tt _merge iso3hs6 hs6 qk PRODY_NEW i
duplicates drop varname year, force   // ���ڹ�+��Ʒ Ϊ����
save E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\���ڳ���ʱ��\��ɾ����.dta,replace
use E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\���ڳ���ʱ��\��ɾ����.dta,clear
merge n:n hs1996 using E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\���ݺϲ�\����ƥ��.dta   //ƥ��ISIC����
drop _merge
destring j ,gen (imper)
save E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\���ڳ���ʱ��\��ɾ����+����.dta,replace


use E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\���ڳ���ʱ��\��ɾ����+����.dta,clear
rename imper ii
merge n:n ii using E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\���ݺϲ�\����ƥ��.dta 
drop j ii iso31 _merge
drop if hs1996 == .
save E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\�ع�����\�ع�ԭʼ����.dta,replace

use  E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\�ع�����\�ع�ԭʼ����.dta,clear

merge n:1 iso3 using E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\���ݺϲ�\������.dta 
drop _merge
drop if ins == .
rename iso3 importer
save E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\�ع�����\�ع�ԭʼ��������ҵ�͹��ҷ���.dta,replace
