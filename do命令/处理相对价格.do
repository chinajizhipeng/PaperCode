*1998������
use E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\��ݼ���\1998���ݼ���ǰ.dta,clear
collapse (sum) v,by(hs6)    // ����1998���Ʒ�������
rename v sumv
save E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\�۸����\1998��Ʒ����.dta
use E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\��ݼ���\1998���ݼ���ǰ.dta,clear
merge m:1 hs6 using E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\�۸����\1998��Ʒ����.dta
drop _merge
drop if missing(t, hs6, hs1996, i ,j ,v ,q ,iso3 ,hs6iso3 ,sumv )
save E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\�۸����\1998���ϲ�.dta  //����ݶ�͵��۵�����

*1999������
use E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\��ݼ���\1999���ݼ���ǰ.dta,clear
collapse (sum) v,by(hs6)    // ����1999���Ʒ�������
rename v sumv
save E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\�۸����\1999��Ʒ����.dta
use E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\��ݼ���\1999���ݼ���ǰ.dta,clear
merge m:1 hs6 using E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\�۸����\1999��Ʒ����.dta
drop _merge
drop if missing(t, hs6, hs1996, i ,j ,v ,q ,iso3 ,hs6iso3 ,sumv )
save E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\�۸����\1999���ϲ�.dta

*2000������
use E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\��ݼ���\2000���ݼ���ǰ.dta,clear
collapse (sum) v,by(hs6)    // ����2000���Ʒ�������
rename v sumv
save E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\�۸����\2000��Ʒ����.dta
use E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\��ݼ���\2000���ݼ���ǰ.dta,clear
merge m:1 hs6 using E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\�۸����\2000��Ʒ����.dta
drop _merge
drop if missing(t, hs6, hs1996, i ,j ,v ,q ,iso3 ,hs6iso3 ,sumv )
save E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\�۸����\2000���ϲ�.dta

*2001������
use E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\��ݼ���\2001���ݼ���ǰ.dta,clear
collapse (sum) v,by(hs6)    // ����2001���Ʒ�������
rename v sumv
save E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\�۸����\2001��Ʒ����.dta
use E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\��ݼ���\2001���ݼ���ǰ.dta,clear
merge m:1 hs6 using E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\�۸����\2001��Ʒ����.dta
drop _merge
drop if missing(t, hs6, hs1996, i ,j ,v ,q ,iso3 ,hs6iso3 ,sumv )
save E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\�۸����\2001���ϲ�.dta


*2002������
use E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\��ݼ���\2002���ݼ���ǰ.dta,clear
collapse (sum) v,by(hs6)    // ����2002���Ʒ�������
rename v sumv
save E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\�۸����\2002��Ʒ����.dta
use E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\��ݼ���\2002���ݼ���ǰ.dta,clear
merge m:1 hs6 using E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\�۸����\2002��Ʒ����.dta
drop _merge
drop if missing(t, hs6, hs1996, i ,j ,v ,q ,iso3 ,hs6iso3 ,sumv )
save E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\�۸����\2002���ϲ�.dta


*2003������
use E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\��ݼ���\2003���ݼ���ǰ.dta,clear
collapse (sum) v,by(hs6)    // ����2003���Ʒ�������
rename v sumv
save E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\�۸����\2003��Ʒ����.dta
use E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\��ݼ���\2003���ݼ���ǰ.dta,clear
merge m:1 hs6 using E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\�۸����\2003��Ʒ����.dta
drop _merge
drop if missing(t, hs6, hs1996, i ,j ,v ,q ,iso3 ,hs6iso3 ,sumv )
save E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\�۸����\2003���ϲ�.dta


*2004������
use E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\��ݼ���\2004���ݼ���ǰ.dta,clear
collapse (sum) v,by(hs6)    // ����2004���Ʒ�������
rename v sumv
save E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\�۸����\2004��Ʒ����.dta
use E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\��ݼ���\2004���ݼ���ǰ.dta,clear
merge m:1 hs6 using E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\�۸����\2004��Ʒ����.dta
drop _merge
drop if missing(t, hs6, hs1996, i ,j ,v ,q ,iso3 ,hs6iso3 ,sumv )
save E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\�۸����\2004���ϲ�.dta


*2005������
use E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\��ݼ���\2005���ݼ���ǰ.dta,clear
collapse (sum) v,by(hs6)    // ����2005���Ʒ�������
rename v sumv
save E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\�۸����\2005��Ʒ����.dta
use E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\��ݼ���\2005���ݼ���ǰ.dta,clear
merge m:1 hs6 using E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\�۸����\2005��Ʒ����.dta
drop _merge
drop if missing(t, hs6, hs1996, i ,j ,v ,q ,iso3 ,hs6iso3 ,sumv )
save E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\�۸����\2005���ϲ�.dta


*2006������
use E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\��ݼ���\2006���ݼ���ǰ.dta,clear
collapse (sum) v,by(hs6)    // ����2006���Ʒ�������
rename v sumv
save E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\�۸����\2006��Ʒ����.dta
use E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\��ݼ���\2006���ݼ���ǰ.dta,clear
merge m:1 hs6 using E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\�۸����\2006��Ʒ����.dta
drop _merge
drop if missing(t, hs6, hs1996, i ,j ,v ,q ,iso3 ,hs6iso3 ,sumv )
save E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\�۸����\2006���ϲ�.dta

*2007������
use E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\��ݼ���\2007���ݼ���ǰ.dta,clear
collapse (sum) v,by(hs6)    // ����2007���Ʒ�������
rename v sumv
save E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\�۸����\2007��Ʒ����.dta
use E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\��ݼ���\2007���ݼ���ǰ.dta,clear
merge m:1 hs6 using E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\�۸����\2007��Ʒ����.dta
drop _merge
drop if missing(t, hs6, hs1996, i ,j ,v ,q ,iso3 ,hs6iso3 ,sumv )
save E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\�۸����\2007���ϲ�.dta


*2008������
use E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\��ݼ���\2008���ݼ���ǰ.dta,clear
collapse (sum) v,by(hs6)    // ����2008���Ʒ�������
rename v sumv
save E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\�۸����\2008��Ʒ����.dta
use E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\��ݼ���\2008���ݼ���ǰ.dta,clear
merge m:1 hs6 using E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\�۸����\2008��Ʒ����.dta
drop _merge
drop if missing(t, hs6, hs1996, i ,j ,v ,q ,iso3 ,hs6iso3 ,sumv )
save E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\�۸����\2008���ϲ�.dta


*2009������
use E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\��ݼ���\2009���ݼ���ǰ.dta,clear
collapse (sum) v,by(hs6)    // ����2009���Ʒ�������
rename v sumv
save E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\�۸����\2009��Ʒ����.dta
use E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\��ݼ���\2009���ݼ���ǰ.dta,clear
merge m:1 hs6 using E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\�۸����\2009��Ʒ����.dta
drop _merge
drop if missing(t, hs6, hs1996, i ,j ,v ,q ,iso3 ,hs6iso3 ,sumv )
save E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\�۸����\2009���ϲ�.dta




*2010������
use E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\��ݼ���\2010���ݼ���ǰ.dta,clear
collapse (sum) v,by(hs6)    // ����2010���Ʒ�������
rename v sumv
save E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\�۸����\2010��Ʒ����.dta
use E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\��ݼ���\2010���ݼ���ǰ.dta,clear
merge m:1 hs6 using E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\�۸����\2010��Ʒ����.dta
drop _merge
drop if missing(t, hs6, hs1996, i ,j ,v ,q ,iso3 ,hs6iso3 ,sumv )
save E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\�۸����\2010���ϲ�.dta

*2011������
use E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\��ݼ���\2011���ݼ���ǰ.dta,clear
collapse (sum) v,by(hs6)    // ����2011���Ʒ�������
rename v sumv
save E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\�۸����\2011��Ʒ����.dta
use E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\��ݼ���\2011���ݼ���ǰ.dta,clear
merge m:1 hs6 using E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\�۸����\2011��Ʒ����.dta
drop _merge
drop if missing(t, hs6, hs1996, i ,j ,v ,q ,iso3 ,hs6iso3 ,sumv )
save E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\�۸����\2011���ϲ�.dta



*����ݶ�ͳ��ڵ���
*����1998��
use E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\�۸����\1998���ϲ�.dta ,clear
collapse (sum) v q,by(iso3 hs6)  //*�ϲ���ֵ������ 
rename v allv
rename q allq
save E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\�۸����\1998�����ܼ�.dta,replace
merge m:1 hs6 using E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\�۸����\1998��Ʒ����.dta
drop _merge
*����ݶ�
gen share=allv/sumv
*������
gen unitp=allv/allq
*����ݶ�*����
gen sp=share*unitp
collapse (sum) sp ,by(hs6)  //*���ܷݶ�˵��� 
save E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\�۸����\1998sharep.dta,replace
use E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\�۸����\1998�����ܼ�.dta ,clear
encode iso3,gen (iso31)
keep if iso31==39              //�����й���Ʒ
gen unitp=allv/allq
merge m:1 hs6 using E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\�۸����\1998sharep.dta
gen qk=unitp/sp                  //�����Ʒ����ˮƽ
drop _merge
gen t=1998
save  E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\�۸����\1998����Ʒ����ˮƽ.dta,replace

*����1999��
use E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\�۸����\1999���ϲ�.dta ,clear
collapse (sum) v q,by(iso3 hs6)  //*�ϲ���ֵ������ 
rename v allv
rename q allq
save E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\�۸����\1999�����ܼ�.dta,replace
merge m:1 hs6 using E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\�۸����\1999��Ʒ����.dta
drop _merge
*����ݶ�
gen share=allv/sumv
*������
gen unitp=allv/allq
*����ݶ�*����
gen sp=share*unitp
collapse (sum) sp ,by(hs6)  //*���ܷݶ�˵��� 
save E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\�۸����\1999sharep.dta,replace
use E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\�۸����\1999�����ܼ�.dta ,clear
encode iso3,gen (iso31)
keep if iso31==39              //�����й���Ʒ
gen unitp=allv/allq
merge m:1 hs6 using E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\�۸����\1999sharep.dta
gen qk=unitp/sp                  //�����Ʒ����ˮƽ
drop _merge
gen t=1999
save  E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\�۸����\2000����Ʒ����ˮƽ.dta,replace

*����2000��
use E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\�۸����\2000���ϲ�.dta ,clear
collapse (sum) v q,by(iso3 hs6)  //*�ϲ���ֵ������ 
rename v allv
rename q allq
save E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\�۸����\2000�����ܼ�.dta,replace
merge m:1 hs6 using E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\�۸����\2000��Ʒ����.dta
drop _merge
*����ݶ�
gen share=allv/sumv
*������
gen unitp=allv/allq
*����ݶ�*����
gen sp=share*unitp
collapse (sum) sp ,by(hs6)  //*���ܷݶ�˵��� 
save E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\�۸����\2000sharep.dta,replace
use E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\�۸����\2000�����ܼ�.dta ,clear
encode iso3,gen (iso31)
keep if iso31==39              //�����й���Ʒ
gen unitp=allv/allq
merge m:1 hs6 using E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\�۸����\2000sharep.dta
gen qk=unitp/sp                  //�����Ʒ����ˮƽ
drop _merge
gen t=2000
save  E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\�۸����\2000����Ʒ����ˮƽ.dta,replace


*����2001��
use E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\�۸����\2001���ϲ�.dta ,clear
collapse (sum) v q,by(iso3 hs6)  //*�ϲ���ֵ������ 
rename v allv
rename q allq
save E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\�۸����\2001�����ܼ�.dta,replace
merge m:1 hs6 using E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\�۸����\2001��Ʒ����.dta
drop _merge
*����ݶ�
gen share=allv/sumv
*������
gen unitp=allv/allq
*����ݶ�*����
gen sp=share*unitp
collapse (sum) sp ,by(hs6)  //*���ܷݶ�˵��� 
save E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\�۸����\2001sharep.dta,replace
use E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\�۸����\2001�����ܼ�.dta ,clear
encode iso3,gen (iso31)
keep if iso31==39              //�����й���Ʒ
gen unitp=allv/allq
merge m:1 hs6 using E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\�۸����\2001sharep.dta
gen qk=unitp/sp                  //�����Ʒ����ˮƽ
drop _merge
gen t=2001
save  E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\�۸����\2001����Ʒ����ˮƽ.dta,replace

*����2002��
use E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\�۸����\2002���ϲ�.dta ,clear
collapse (sum) v q,by(iso3 hs6)  //*�ϲ���ֵ������ 
rename v allv
rename q allq
save E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\�۸����\2002�����ܼ�.dta,replace
merge m:1 hs6 using E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\�۸����\2002��Ʒ����.dta
drop _merge
*����ݶ�
gen share=allv/sumv
*������
gen unitp=allv/allq
*����ݶ�*����
gen sp=share*unitp
collapse (sum) sp ,by(hs6)  //*���ܷݶ�˵��� 
save E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\�۸����\2002sharep.dta,replace
use E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\�۸����\2002�����ܼ�.dta ,clear
encode iso3,gen (iso31)
keep if iso31==39              //�����й���Ʒ
gen unitp=allv/allq
merge m:1 hs6 using E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\�۸����\2002sharep.dta
gen qk=unitp/sp                  //�����Ʒ����ˮƽ
drop _merge
gen t=2002
save  E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\�۸����\2002����Ʒ����ˮƽ.dta,replace


*����2003��
use E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\�۸����\2003���ϲ�.dta ,clear
collapse (sum) v q,by(iso3 hs6)  //*�ϲ���ֵ������ 
rename v allv
rename q allq
save E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\�۸����\2003�����ܼ�.dta,replace
merge m:1 hs6 using E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\�۸����\2003��Ʒ����.dta
drop _merge
*����ݶ�
gen share=allv/sumv
*������
gen unitp=allv/allq
*����ݶ�*����
gen sp=share*unitp
collapse (sum) sp ,by(hs6)  //*���ܷݶ�˵��� 
save E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\�۸����\2003sharep.dta,replace
use E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\�۸����\2003�����ܼ�.dta ,clear
encode iso3,gen (iso31)
keep if iso31==39              //�����й���Ʒ
gen unitp=allv/allq
merge m:1 hs6 using E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\�۸����\2003sharep.dta
gen qk=unitp/sp                  //�����Ʒ����ˮƽ
drop _merge
gen t=2003
save  E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\�۸����\2003����Ʒ����ˮƽ.dta,replace

*����2004��
use E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\�۸����\2004���ϲ�.dta ,clear
collapse (sum) v q,by(iso3 hs6)  //*�ϲ���ֵ������ 
rename v allv
rename q allq
save E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\�۸����\2004�����ܼ�.dta,replace
merge m:1 hs6 using E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\�۸����\2004��Ʒ����.dta
drop _merge
*����ݶ�
gen share=allv/sumv
*������
gen unitp=allv/allq
*����ݶ�*����
gen sp=share*unitp
collapse (sum) sp ,by(hs6)  //*���ܷݶ�˵��� 
save E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\�۸����\2004sharep.dta,replace
use E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\�۸����\2004�����ܼ�.dta ,clear
encode iso3,gen (iso31)
keep if iso31==39              //�����й���Ʒ
gen unitp=allv/allq
merge m:1 hs6 using E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\�۸����\2004sharep.dta
gen qk=unitp/sp                  //�����Ʒ����ˮƽ
drop _merge
gen t=2004
save  E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\�۸����\2004����Ʒ����ˮƽ.dta,replace

*����2005��
use E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\�۸����\2005���ϲ�.dta ,clear
collapse (sum) v q,by(iso3 hs6)  //*�ϲ���ֵ������ 
rename v allv
rename q allq
save E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\�۸����\2005�����ܼ�.dta,replace
merge m:1 hs6 using E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\�۸����\2005��Ʒ����.dta
drop _merge
*����ݶ�
gen share=allv/sumv
*������
gen unitp=allv/allq
*����ݶ�*����
gen sp=share*unitp
collapse (sum) sp ,by(hs6)  //*���ܷݶ�˵��� 
save E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\�۸����\2005sharep.dta,replace
use E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\�۸����\2005�����ܼ�.dta ,clear
encode iso3,gen (iso31)
keep if iso31==39              //�����й���Ʒ
gen unitp=allv/allq
merge m:1 hs6 using E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\�۸����\2005sharep.dta
gen qk=unitp/sp                  //�����Ʒ����ˮƽ
drop _merge
gen t=2005
save  E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\�۸����\2005����Ʒ����ˮƽ.dta,replace

*����2006��
use E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\�۸����\2006���ϲ�.dta ,clear
collapse (sum) v q,by(iso3 hs6)  //*�ϲ���ֵ������ 
rename v allv
rename q allq
save E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\�۸����\2006�����ܼ�.dta,replace
merge m:1 hs6 using E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\�۸����\2006��Ʒ����.dta
drop _merge
*����ݶ�
gen share=allv/sumv
*������
gen unitp=allv/allq
*����ݶ�*����
gen sp=share*unitp
collapse (sum) sp ,by(hs6)  //*���ܷݶ�˵��� 
save E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\�۸����\2006sharep.dta,replace
use E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\�۸����\2006�����ܼ�.dta ,clear
encode iso3,gen (iso31)
keep if iso31==39              //�����й���Ʒ
gen unitp=allv/allq
merge m:1 hs6 using E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\�۸����\2006sharep.dta
gen qk=unitp/sp                  //�����Ʒ����ˮƽ
drop _merge
gen t=2006
save  E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\�۸����\2006����Ʒ����ˮƽ.dta,replace


*����2007��
use E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\�۸����\2007���ϲ�.dta ,clear
collapse (sum) v q,by(iso3 hs6)  //*�ϲ���ֵ������ 
rename v allv
rename q allq
save E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\�۸����\2007�����ܼ�.dta,replace
merge m:1 hs6 using E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\�۸����\2007��Ʒ����.dta
drop _merge
*����ݶ�
gen share=allv/sumv
*������
gen unitp=allv/allq
*����ݶ�*����
gen sp=share*unitp
collapse (sum) sp ,by(hs6)  //*���ܷݶ�˵��� 
save E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\�۸����\2007sharep.dta,replace
use E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\�۸����\2007�����ܼ�.dta ,clear
encode iso3,gen (iso31)
keep if iso31==39              //�����й���Ʒ
gen unitp=allv/allq
merge m:1 hs6 using E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\�۸����\2007sharep.dta
gen qk=unitp/sp                  //�����Ʒ����ˮƽ
drop _merge
gen t=2007
save  E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\�۸����\2007����Ʒ����ˮƽ.dta,replace


*����2008��
use E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\�۸����\2008���ϲ�.dta ,clear
collapse (sum) v q,by(iso3 hs6)  //*�ϲ���ֵ������ 
rename v allv
rename q allq
save E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\�۸����\2008�����ܼ�.dta,replace
merge m:1 hs6 using E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\�۸����\2008��Ʒ����.dta
drop _merge
*����ݶ�
gen share=allv/sumv
*������
gen unitp=allv/allq
*����ݶ�*����
gen sp=share*unitp
collapse (sum) sp ,by(hs6)  //*���ܷݶ�˵��� 
save E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\�۸����\2008sharep.dta,replace
use E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\�۸����\2008�����ܼ�.dta ,clear
encode iso3,gen (iso31)
keep if iso31==39              //�����й���Ʒ
gen unitp=allv/allq
merge m:1 hs6 using E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\�۸����\2008sharep.dta
gen qk=unitp/sp                  //�����Ʒ����ˮƽ
drop _merge
gen t=2008
save  E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\�۸����\2008����Ʒ����ˮƽ.dta,replace


*����2009��
use E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\�۸����\2009���ϲ�.dta ,clear
collapse (sum) v q,by(iso3 hs6)  //*�ϲ���ֵ������ 
rename v allv
rename q allq
save E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\�۸����\2009�����ܼ�.dta,replace
merge m:1 hs6 using E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\�۸����\2009��Ʒ����.dta
drop _merge
*����ݶ�
gen share=allv/sumv
*������
gen unitp=allv/allq
*����ݶ�*����
gen sp=share*unitp
collapse (sum) sp ,by(hs6)  //*���ܷݶ�˵��� 
save E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\�۸����\2009sharep.dta,replace
use E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\�۸����\2009�����ܼ�.dta ,clear
encode iso3,gen (iso31)
keep if iso31==39              //�����й���Ʒ
gen unitp=allv/allq
merge m:1 hs6 using E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\�۸����\2009sharep.dta
gen qk=unitp/sp                  //�����Ʒ����ˮƽ
drop _merge
gen t=2009
save  E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\�۸����\2009����Ʒ����ˮƽ.dta,replace

*����2010��
use E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\�۸����\2010���ϲ�.dta ,clear
collapse (sum) v q,by(iso3 hs6)  //*�ϲ���ֵ������ 
rename v allv
rename q allq
save E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\�۸����\2010�����ܼ�.dta,replace
merge m:1 hs6 using E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\�۸����\2010��Ʒ����.dta
drop _merge
*����ݶ�
gen share=allv/sumv
*������
gen unitp=allv/allq
*����ݶ�*����
gen sp=share*unitp
collapse (sum) sp ,by(hs6)  //*���ܷݶ�˵��� 
save E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\�۸����\2010sharep.dta,replace
use E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\�۸����\2010�����ܼ�.dta ,clear
encode iso3,gen (iso31)
keep if iso31==39              //�����й���Ʒ
gen unitp=allv/allq
merge m:1 hs6 using E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\�۸����\2010sharep.dta
gen qk=unitp/sp                  //�����Ʒ����ˮƽ
drop _merge
gen t=2010
save  E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\�۸����\2010����Ʒ����ˮƽ.dta,replace

*����2011��
use E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\�۸����\2011���ϲ�.dta ,clear
collapse (sum) v q,by(iso3 hs6)  //*�ϲ���ֵ������ 
rename v allv
rename q allq
save E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\�۸����\2011�����ܼ�.dta,replace
merge m:1 hs6 using E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\�۸����\2011��Ʒ����.dta
drop _merge
*����ݶ�
gen share=allv/sumv
*������
gen unitp=allv/allq
*����ݶ�*����
gen sp=share*unitp
collapse (sum) sp ,by(hs6)  //*���ܷݶ�˵��� 
save E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\�۸����\2011sharep.dta,replace
use E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\�۸����\2011�����ܼ�.dta ,clear
encode iso3,gen (iso31)
keep if iso31==39              //�����й���Ʒ
gen unitp=allv/allq
merge m:1 hs6 using E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\�۸����\2011sharep.dta
gen qk=unitp/sp                  //�����Ʒ����ˮƽ
drop _merge
gen t=2011
save  E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\�۸����\2011����Ʒ����ˮƽ.dta,replace


*�ϲ�1998-2011 ����
 use E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\�۸����\1998����Ʒ����ˮƽ.dta,clear
 append using E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\�۸����\1999����Ʒ����ˮƽ.dta
append using E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\�۸����\2001����Ʒ����ˮƽ.dta
append using E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\�۸����\2002����Ʒ����ˮƽ.dta
append using E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\�۸����\2003����Ʒ����ˮƽ.dta
append using E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\�۸����\2004����Ʒ����ˮƽ.dta
append using E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\�۸����\2005����Ʒ����ˮƽ.dta
append using E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\�۸����\2006����Ʒ����ˮƽ.dta
append using E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\�۸����\2007����Ʒ����ˮƽ.dta
append using E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\�۸����\2008����Ʒ����ˮƽ.dta
append using E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\�۸����\2009����Ʒ����ˮƽ.dta
append using E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\�۸����\2010����Ʒ����ˮƽ.dta
append using E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\�۸����\2011����Ʒ����ˮƽ.dta
drop if missing(hs6 ,iso3 ,allv ,allq ,iso31 ,unitp ,sp ,qk ,t)
drop allv allq unitp sp
save E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\�۸����\1999-2011��Ʒ����ˮƽ.dta
















