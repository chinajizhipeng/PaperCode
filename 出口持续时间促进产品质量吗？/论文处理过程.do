*һ���ϲ�����
* 2000�����ݴ���
clear
insheet using E:\��������\CEPII����\HS96\baci96_2000.csv
merge n:n i using ����ƥ��.dta ,update replace          //ƥ�����
tostring hs6 , replace  format(%06.0f)                  //��ֵ�ͱ��ַ���
gen hs6iso3=iso3+hs6
destring hs6,gen (hs1996)                               //hsҲ��5λ����
drop _merge 
save E:\����������\����\��Ʒ��ݻ���\2000���ݼ���ǰ.dta,replace  //ÿ�����ҳ���Ŀ�ĵصļ�ֵ�����������
collapse (sum) v,by(hs6iso3)                            //����-����-��Ʒ
gen tt="2000"
destring tt,gen( t)                                     //�������
drop tt
drop in 1/2810                                          //�������
g id=substr(hs6iso3,1,3)                                //���ӹ���
g hs6=substr(hs6iso3,4,9)                               //����HS����
save E:\����������\����\��Ʒ��ݻ���\2000���ݼ��ܺ�.dta,replace  //ÿ������ÿ�����ÿ���Ʒ���ܶ�


* 2001�����ݴ���
clear
insheet using E:\��������\CEPII����\HS96\baci96_2001.csv
merge n:n i using ����ƥ��.dta ,update replace          //ƥ�����
tostring hs6 , replace  format(%06.0f)                  //��ֵ�ͱ��ַ���
gen hs6iso3=iso3+hs6
destring hs6,gen (hs1996)                               //hsҲ��5λ����
drop _merge 
save E:\����������\����\��Ʒ��ݻ���\2001���ݼ���ǰ.dta,replace
collapse (sum) v,by(hs6iso3)                            //����-����-��Ʒ
gen tt="2001"
destring tt,gen( t)                                     //�������
drop tt
drop in 1/2645                                          //�������
g id=substr(hs6iso3,1,3)                                //���ӹ���
g hs6=substr(hs6iso3,4,9)                               //����HS����
save E:\����������\����\��Ʒ��ݻ���\2001���ݼ��ܺ�.dta,replace


* 2002�����ݴ���
clear
insheet using E:\��������\CEPII����\HS96\baci96_2002.csv
merge n:n i using ����ƥ��.dta ,update replace          //ƥ�����
tostring hs6 , replace  format(%06.0f)                  //��ֵ�ͱ��ַ���
gen hs6iso3=iso3+hs6
destring hs6,gen (hs1996)                               //hsҲ��5λ����
drop _merge 
save E:\����������\����\��Ʒ��ݻ���\2002���ݼ���ǰ.dta,replace
collapse (sum) v,by(hs6iso3)                            //����-����-��Ʒ
gen tt="2002"
destring tt,gen( t)                                     //�������
drop tt
drop in 1/2580                                          //�������
g id=substr(hs6iso3,1,3)                                //���ӹ���
g hs6=substr(hs6iso3,4,9)                               //����HS����
save E:\����������\����\��Ʒ��ݻ���\2002���ݼ��ܺ�.dta,replace


* 2003�����ݴ���
clear
insheet using E:\��������\CEPII����\HS96\baci96_2003.csv
merge n:n i using ����ƥ��.dta ,update replace          //ƥ�����
tostring hs6 , replace  format(%06.0f)                  //��ֵ�ͱ��ַ���
gen hs6iso3=iso3+hs6
destring hs6,gen (hs1996)                               //hsҲ��5λ����
drop _merge 
save E:\����������\����\��Ʒ��ݻ���\2003���ݼ���ǰ.dta,replace
collapse (sum) v,by(hs6iso3)                            //����-����-��Ʒ
gen tt="2003"
destring tt,gen( t)                                     //�������
drop tt
drop in 1/2623                                          //�������
g id=substr(hs6iso3,1,3)                                //���ӹ���
g hs6=substr(hs6iso3,4,9)                               //����HS����
save E:\����������\����\��Ʒ��ݻ���\2003���ݼ��ܺ�.dta,replace


* 2004�����ݴ���
clear
insheet using E:\��������\CEPII����\HS96\baci96_2004.csv
merge n:n i using ����ƥ��.dta ,update replace          //ƥ�����
tostring hs6 , replace  format(%06.0f)                  //��ֵ�ͱ��ַ���
gen hs6iso3=iso3+hs6
destring hs6,gen (hs1996)                               //hsҲ��5λ����
drop _merge 
save E:\����������\����\��Ʒ��ݻ���\2004���ݼ���ǰ.dta,replace
collapse (sum) v,by(hs6iso3)                            //����-����-��Ʒ
gen tt="2004"
destring tt,gen( t)                                     //�������
drop tt
drop in 1/2709                                          //�������
g id=substr(hs6iso3,1,3)                                //���ӹ���
g hs6=substr(hs6iso3,4,9)                               //����HS����
save E:\����������\����\��Ʒ��ݻ���\2004���ݼ��ܺ�.dta,replace


* 2005�����ݴ���
clear
insheet using E:\��������\CEPII����\HS96\baci96_2005.csv
merge n:n i using ����ƥ��.dta ,update replace          //ƥ�����
tostring hs6 , replace  format(%06.0f)                  //��ֵ�ͱ��ַ���
gen hs6iso3=iso3+hs6
destring hs6,gen (hs1996)                               //hsҲ��5λ����
drop _merge 
save E:\����������\����\��Ʒ��ݻ���\2005���ݼ���ǰ.dta,replace
collapse (sum) v,by(hs6iso3)                            //����-����-��Ʒ
gen tt="2005"
destring tt,gen( t)                                     //�������
drop tt
drop in 1/5918                                         //�������
g id=substr(hs6iso3,1,3)                                //���ӹ���
g hs6=substr(hs6iso3,4,9)                               //����HS����
save E:\����������\����\��Ʒ��ݻ���\2005���ݼ��ܺ�.dta,replace

* 2006�����ݴ���
clear
insheet using E:\��������\CEPII����\HS96\baci96_2006.csv
merge n:n i using ����ƥ��.dta ,update replace          //ƥ�����
tostring hs6 , replace  format(%06.0f)                  //��ֵ�ͱ��ַ���
gen hs6iso3=iso3+hs6
destring hs6,gen (hs1996)                               //hsҲ��5λ����
drop _merge 
save E:\����������\����\��Ʒ��ݻ���\2006���ݼ���ǰ.dta,replace
collapse (sum) v,by(hs6iso3)                            //����-����-��Ʒ
gen tt="2006"
destring tt,gen( t)                                     //�������
drop tt
drop in 1/6436                                          //�������
g id=substr(hs6iso3,1,3)                                //���ӹ���
g hs6=substr(hs6iso3,4,9)                               //����HS����
save E:\����������\����\��Ʒ��ݻ���\2006���ݼ��ܺ�.dta,replace

* 2007�����ݴ���
clear
insheet using E:\��������\CEPII����\HS96\baci96_2007.csv
merge n:n i using ����ƥ��.dta ,update replace          //ƥ�����
tostring hs6 , replace  format(%06.0f)                  //��ֵ�ͱ��ַ���
gen hs6iso3=iso3+hs6
destring hs6,gen (hs1996)                               //hsҲ��5λ����
drop _merge 
save E:\����������\����\��Ʒ��ݻ���\2007���ݼ���ǰ.dta,replace
collapse (sum) v,by(hs6iso3)                            //����-����-��Ʒ
gen tt="2007"
destring tt,gen( t)                                     //�������
drop tt
drop in 1/6552                                          //�������
g id=substr(hs6iso3,1,3)                                //���ӹ���
g hs6=substr(hs6iso3,4,9)                               //����HS����
save E:\����������\����\��Ʒ��ݻ���\2007���ݼ��ܺ�.dta,replace

* 2008�����ݴ���
clear
insheet using E:\��������\CEPII����\HS96\baci96_2008.csv
merge n:n i using ����ƥ��.dta ,update replace          //ƥ�����
tostring hs6 , replace  format(%06.0f)                  //��ֵ�ͱ��ַ���
gen hs6iso3=iso3+hs6
destring hs6,gen (hs1996)                               //hsҲ��5λ����
drop _merge 
save E:\����������\����\��Ʒ��ݻ���\2008���ݼ���ǰ.dta,replace
collapse (sum) v,by(hs6iso3)                            //����-����-��Ʒ
gen tt="2008"
destring tt,gen( t)                                     //�������
drop tt
drop in 1/5954                                          //�������
g id=substr(hs6iso3,1,3)                                //���ӹ���
g hs6=substr(hs6iso3,4,9)                               //����HS����
save E:\����������\����\��Ʒ��ݻ���\2008���ݼ��ܺ�.dta,replace

* 2009�����ݴ���
clear
insheet using E:\��������\CEPII����\HS96\baci96_2009.csv
merge n:n i using ����ƥ��.dta ,update replace          //ƥ�����
tostring hs6 , replace  format(%06.0f)                  //��ֵ�ͱ��ַ���
gen hs6iso3=iso3+hs6
destring hs6,gen (hs1996)                               //hsҲ��5λ����
drop _merge 
save E:\����������\����\��Ʒ��ݻ���\2009���ݼ���ǰ.dta,replace
collapse (sum) v,by(hs6iso3)                            //����-����-��Ʒ
gen tt="2009"
destring tt,gen( t)                                     //�������
drop tt
drop in 1/6319                                          //�������
g id=substr(hs6iso3,1,3)                                //���ӹ���
g hs6=substr(hs6iso3,4,9)                               //����HS����
save E:\����������\����\��Ʒ��ݻ���\2009���ݼ��ܺ�.dta,replace

* 2010�����ݴ���
clear
insheet using E:\��������\CEPII����\HS96\baci96_2010.csv
merge n:n i using ����ƥ��.dta ,update replace          //ƥ�����
tostring hs6 , replace  format(%06.0f)                  //��ֵ�ͱ��ַ���
gen hs6iso3=iso3+hs6
destring hs6,gen (hs1996)                               //hsҲ��5λ����
drop _merge 
save E:\����������\����\��Ʒ��ݻ���\2010���ݼ���ǰ.dta,replace
collapse (sum) v,by(hs6iso3)                            //����-����-��Ʒ
gen tt="2010"
destring tt,gen( t)                                     //�������
drop tt
drop in 1/6308                                          //�������
g id=substr(hs6iso3,1,3)                                //���ӹ���
g hs6=substr(hs6iso3,4,9)                               //����HS����
save E:\����������\����\��Ʒ��ݻ���\2010���ݼ��ܺ�.dta,replace

* 2011�����ݴ���
clear
insheet using E:\��������\CEPII����\HS96\baci96_2011.csv
merge n:n i using ����ƥ��.dta ,update replace          //ƥ�����
tostring hs6 , replace  format(%06.0f)                  //��ֵ�ͱ��ַ���
gen hs6iso3=iso3+hs6
destring hs6,gen (hs1996)                               //hsҲ��5λ����
drop _merge 
save E:\����������\����\��Ʒ��ݻ���\2011���ݼ���ǰ.dta,replace
collapse (sum) v,by(hs6iso3)                            //����-����-��Ʒ
gen tt="2011"
destring tt,gen( t)                                     //�������
drop tt
drop in 1/6424                                          //�������!
g id=substr(hs6iso3,1,3)                                //���ӹ���
g hs6=substr(hs6iso3,4,9)                               //����HS����
save E:\����������\����\��Ʒ��ݻ���\2011���ݼ��ܺ�.dta,replace

* 2012�����ݴ���
clear
insheet using E:\��������\CEPII����\HS96\baci96_2012.csv
merge n:n i using ����ƥ��.dta ,update replace          //ƥ�����
tostring hs6 , replace  format(%06.0f)                  //��ֵ�ͱ��ַ���
gen hs6iso3=iso3+hs6
destring hs6,gen (hs1996)                               //hsҲ��5λ����
drop _merge 
save E:\����������\����\��Ʒ��ݻ���\2012���ݼ���ǰ.dta,replace
collapse (sum) v,by(hs6iso3)                            //����-����-��Ʒ
gen tt="2012"
destring tt,gen( t)                                     //�������
drop tt
drop in 1/6403                                          //�������!
g id=substr(hs6iso3,1,3)                                //���ӹ���
g hs6=substr(hs6iso3,4,9)                               //����HS����
save E:\����������\����\��Ʒ��ݻ���\2012���ݼ��ܺ�.dta,replace

* 2013�����ݴ���
clear
insheet using E:\��������\CEPII����\HS96\baci96_2013.csv
merge n:n i using ����ƥ��.dta ,update replace          //ƥ�����
tostring hs6 , replace  format(%06.0f)                  //��ֵ�ͱ��ַ���
gen hs6iso3=iso3+hs6
destring hs6,gen (hs1996)                               //hsҲ��5λ����
drop _merge 
save E:\����������\����\��Ʒ��ݻ���\2013���ݼ���ǰ.dta,replace
collapse (sum) v,by(hs6iso3)                            //����-����-��Ʒ
gen tt="2013"
destring tt,gen( t)                                     //�������
drop tt
drop in 1/6456                                          //�������!
g id=substr(hs6iso3,1,3)                                //���ӹ���
g hs6=substr(hs6iso3,4,9)                               //����HS����
save E:\����������\����\��Ʒ��ݻ���\2013���ݼ��ܺ�.dta,replace

* 2014�����ݴ���
clear
insheet using E:\��������\CEPII����\HS96\baci96_2014.csv
merge n:n i using ����ƥ��.dta ,update replace          //ƥ�����
tostring hs6 , replace  format(%06.0f)                  //��ֵ�ͱ��ַ���
gen hs6iso3=iso3+hs6
destring hs6,gen (hs1996)                               //hsҲ��5λ����
drop _merge 
save E:\����������\����\��Ʒ��ݻ���\2014���ݼ���ǰ.dta,replace
collapse (sum) v,by(hs6iso3)                            //����-����-��Ʒ
gen tt="2014"
destring tt,gen( t)                                     //�������
drop tt
drop in 1/6424                                          //�������!
g id=substr(hs6iso3,1,3)                                //���ӹ���
g hs6=substr(hs6iso3,4,9)                               //����HS����
save E:\����������\����\��Ʒ��ݻ���\2014���ݼ��ܺ�.dta,replace

*�ϲ�2000-2014�����-��Ʒ����������ݡ�
use E:\����������\����\��Ʒ��ݻ���\2000���ݼ��ܺ�.dta,clear
 append using E:\����������\����\��Ʒ��ݻ���\2001���ݼ��ܺ�.dta
 append using E:\����������\����\��Ʒ��ݻ���\2002���ݼ��ܺ�.dta
 append using E:\����������\����\��Ʒ��ݻ���\2003���ݼ��ܺ�.dta
 append using E:\����������\����\��Ʒ��ݻ���\2004���ݼ��ܺ�.dta
 append using E:\����������\����\��Ʒ��ݻ���\2005���ݼ��ܺ�.dta
 append using E:\����������\����\��Ʒ��ݻ���\2006���ݼ��ܺ�.dta
 append using E:\����������\����\��Ʒ��ݻ���\2007���ݼ��ܺ�.dta
 append using E:\����������\����\��Ʒ��ݻ���\2008���ݼ��ܺ�.dta
 append using E:\����������\����\��Ʒ��ݻ���\2009���ݼ��ܺ�.dta
 append using E:\����������\����\��Ʒ��ݻ���\2010���ݼ��ܺ�.dta
 append using E:\����������\����\��Ʒ��ݻ���\2011���ݼ��ܺ�.dta
 append using E:\����������\����\��Ʒ��ݻ���\2012���ݼ��ܺ�.dta
 append using E:\����������\����\��Ʒ��ݻ���\2013���ݼ��ܺ�.dta
 append using E:\����������\����\��Ʒ��ݻ���\2014���ݼ��ܺ�.dta
save E:\����������\����\��Ʒ��ݻ���\2000-2014.dta,replace

*��������ȫ���������Ӷ�����ڼ������Ӷ�
*����ȫ���������Ӷ�

use E:\����������\����\��Ʒ��ݻ���\2000-2014.dta,clear
collapse (sum) v, by(id t)
rename v callv
save E:\����������\����\�������Ӷ�\���ҳ����ܶ�.dta,replace //�������ÿ������ܶ�

use E:\����������\����\��Ʒ��ݻ���\2000-2014.dta,clear
merge m:1 t id using E:\����������\����\�������Ӷ�\���ҳ����ܶ�.dta
drop _merge
gen x=v/callv        //ÿ������ÿ�ֳ��ڲ�Ʒռ�ù��ĳ��ڷݶ�

collapse (sum) x, by(hs6 t)   //�������й���ĳ��Ʒ�ݶ�֮�ͣ�ÿ��
rename x cpor //���й���ĳ��Ʒ����֮��
save E:\����������\����\�������Ӷ�\���й���ĳ��Ʒ�ݶ�֮��.dta,replace //���й���ĳ��Ʒ�ݶ�֮�ͣ�ÿ��

use E:\����������\����\��Ʒ��ݻ���\2000-2014.dta,clear
merge m:1 t id using E:\����������\����\�������Ӷ�\���ҳ����ܶ�.dta
drop _merge
merge m:1 t hs6 using E:\����������\����\�������Ӷ�\���й���ĳ��Ʒ�ݶ�֮��.dta
drop _merge
rename t year
merge m:m id year using E:\����������\����\�˾�GDP\rgdp.dta   //ƥ���˾�GDP
drop _merge
drop if missing(rdp)
gen x=v/callv 
gen w=x/cpor //Ȩ��
gen wy=w*rdp
save E:\����������\����\�������Ӷ�\�������ӵĻ�������.dta,replace
collapse (sum) wy ,by(hs6 year)  //��Ʒ���漼�����Ӷ�
rename wy prody
save E:\����������\����\�������Ӷ�\��Ʒ���漼�����Ӷ�.dta,replace

use E:\����������\����\�������Ӷ�\�������ӵĻ�������.dta,clear  //������Ҳ��漼�����Ӷ�
merge n:1 year hs6 using E:\����������\����\�������Ӷ�\��Ʒ���漼�����Ӷ�.dta
drop _merge
gen expy =x*prody
collapse (sum) expy,by(id year)
save E:\����������\����\�������Ӷ�\ȫ���������Ӷȹ��Ҳ���.dta

*������ڼ������Ӷ�
*1.�����Ʒ������
*2000������               //����ÿ�ֲ�Ʒ�������ϵĳ����ܶ� 
use E:\����������\����\��Ʒ��ݻ���\2000���ݼ���ǰ.dta,clear
collapse (sum) v,by(hs6)    // ����2000���Ʒ�������
rename v sumv
save E:\����������\����\����ˮƽ\2000��Ʒ����.dta,replace
use E:\����������\����\��Ʒ��ݻ���\2000���ݼ���ǰ.dta,clear
merge m:1 hs6 using E:\����������\����\����ˮƽ\2000��Ʒ����.dta
drop _merge
drop if missing(t, hs6, hs1996, i ,j ,v ,q ,iso3 ,hs6iso3 ,sumv )
save E:\����������\����\����ˮƽ\2000���ϲ�.dta,replace

*2001������               //����ÿ�ֲ�Ʒ�������ϵĳ����ܶ� 
use E:\����������\����\��Ʒ��ݻ���\2001���ݼ���ǰ.dta,clear
collapse (sum) v,by(hs6)    // ����2001���Ʒ�������
rename v sumv
save E:\����������\����\����ˮƽ\2001��Ʒ����.dta,replace
use E:\����������\����\��Ʒ��ݻ���\2001���ݼ���ǰ.dta,clear
merge m:1 hs6 using E:\����������\����\����ˮƽ\2001��Ʒ����.dta
drop _merge
drop if missing(t, hs6, hs1996, i ,j ,v ,q ,iso3 ,hs6iso3 ,sumv )
save E:\����������\����\����ˮƽ\2001���ϲ�.dta,replace

*2002������               //����ÿ�ֲ�Ʒ�������ϵĳ����ܶ� 
use E:\����������\����\��Ʒ��ݻ���\2002���ݼ���ǰ.dta,clear
collapse (sum) v,by(hs6)    // ����2002���Ʒ�������
rename v sumv
save E:\����������\����\����ˮƽ\2002��Ʒ����.dta,replace
use E:\����������\����\��Ʒ��ݻ���\2002���ݼ���ǰ.dta,clear
merge m:1 hs6 using E:\����������\����\����ˮƽ\2002��Ʒ����.dta
drop _merge
drop if missing(t, hs6, hs1996, i ,j ,v ,q ,iso3 ,hs6iso3 ,sumv )
save E:\����������\����\����ˮƽ\2002���ϲ�.dta,replace

*2003������               //����ÿ�ֲ�Ʒ�������ϵĳ����ܶ� 
use E:\����������\����\��Ʒ��ݻ���\2003���ݼ���ǰ.dta,clear
collapse (sum) v,by(hs6)    // ����2003���Ʒ�������
rename v sumv
save E:\����������\����\����ˮƽ\2003��Ʒ����.dta,replace
use E:\����������\����\��Ʒ��ݻ���\2003���ݼ���ǰ.dta,clear
merge m:1 hs6 using E:\����������\����\����ˮƽ\2003��Ʒ����.dta
drop _merge
drop if missing(t, hs6, hs1996, i ,j ,v ,q ,iso3 ,hs6iso3 ,sumv )
save E:\����������\����\����ˮƽ\2003���ϲ�.dta,replace

*2004������               //����ÿ�ֲ�Ʒ�������ϵĳ����ܶ� 
use E:\����������\����\��Ʒ��ݻ���\2004���ݼ���ǰ.dta,clear
collapse (sum) v,by(hs6)    // ����2004���Ʒ�������
rename v sumv
save E:\����������\����\����ˮƽ\2004��Ʒ����.dta,replace
use E:\����������\����\��Ʒ��ݻ���\2004���ݼ���ǰ.dta,clear
merge m:1 hs6 using E:\����������\����\����ˮƽ\2004��Ʒ����.dta
drop _merge
drop if missing(t, hs6, hs1996, i ,j ,v ,q ,iso3 ,hs6iso3 ,sumv )
save E:\����������\����\����ˮƽ\2004���ϲ�.dta,replace

*2005������               //����ÿ�ֲ�Ʒ�������ϵĳ����ܶ� 
use E:\����������\����\��Ʒ��ݻ���\2005���ݼ���ǰ.dta,clear
collapse (sum) v,by(hs6)    // ����2005���Ʒ�������
rename v sumv
save E:\����������\����\����ˮƽ\2005��Ʒ����.dta,replace
use E:\����������\����\��Ʒ��ݻ���\2005���ݼ���ǰ.dta,clear
merge m:1 hs6 using E:\����������\����\����ˮƽ\2005��Ʒ����.dta
drop _merge
drop if missing(t, hs6, hs1996, i ,j ,v ,q ,iso3 ,hs6iso3 ,sumv )
save E:\����������\����\����ˮƽ\2005���ϲ�.dta,replace

*2006������               //����ÿ�ֲ�Ʒ�������ϵĳ����ܶ� 
use E:\����������\����\��Ʒ��ݻ���\2006���ݼ���ǰ.dta,clear
collapse (sum) v,by(hs6)    // ����2006���Ʒ�������
rename v sumv
save E:\����������\����\����ˮƽ\2006��Ʒ����.dta,replace
use E:\����������\����\��Ʒ��ݻ���\2006���ݼ���ǰ.dta,clear
merge m:1 hs6 using E:\����������\����\����ˮƽ\2006��Ʒ����.dta
drop _merge
drop if missing(t, hs6, hs1996, i ,j ,v ,q ,iso3 ,hs6iso3 ,sumv )
save E:\����������\����\����ˮƽ\2006���ϲ�.dta,replace

*2007������               //����ÿ�ֲ�Ʒ�������ϵĳ����ܶ� 
use E:\����������\����\��Ʒ��ݻ���\2007���ݼ���ǰ.dta,clear
collapse (sum) v,by(hs6)    // ����2007���Ʒ�������
rename v sumv
save E:\����������\����\����ˮƽ\2007��Ʒ����.dta,replace
use E:\����������\����\��Ʒ��ݻ���\2007���ݼ���ǰ.dta,clear
merge m:1 hs6 using E:\����������\����\����ˮƽ\2007��Ʒ����.dta
drop _merge
drop if missing(t, hs6, hs1996, i ,j ,v ,q ,iso3 ,hs6iso3 ,sumv )
save E:\����������\����\����ˮƽ\2007���ϲ�.dta,replace

*2008������               //����ÿ�ֲ�Ʒ�������ϵĳ����ܶ� 
use E:\����������\����\��Ʒ��ݻ���\2008���ݼ���ǰ.dta,clear
collapse (sum) v,by(hs6)    // ����2008���Ʒ�������
rename v sumv
save E:\����������\����\����ˮƽ\2008��Ʒ����.dta,replace
use E:\����������\����\��Ʒ��ݻ���\2008���ݼ���ǰ.dta,clear
merge m:1 hs6 using E:\����������\����\����ˮƽ\2008��Ʒ����.dta
drop _merge
drop if missing(t, hs6, hs1996, i ,j ,v ,q ,iso3 ,hs6iso3 ,sumv )
save E:\����������\����\����ˮƽ\2008���ϲ�.dta,replace

*2009������               //����ÿ�ֲ�Ʒ�������ϵĳ����ܶ� 
use E:\����������\����\��Ʒ��ݻ���\2009���ݼ���ǰ.dta,clear
collapse (sum) v,by(hs6)    // ����2009���Ʒ�������
rename v sumv
save E:\����������\����\����ˮƽ\2009��Ʒ����.dta,replace
use E:\����������\����\��Ʒ��ݻ���\2009���ݼ���ǰ.dta,clear
merge m:1 hs6 using E:\����������\����\����ˮƽ\2009��Ʒ����.dta
drop _merge
drop if missing(t, hs6, hs1996, i ,j ,v ,q ,iso3 ,hs6iso3 ,sumv )
save E:\����������\����\����ˮƽ\2009���ϲ�.dta,replace

*2010������               //����ÿ�ֲ�Ʒ�������ϵĳ����ܶ� 
use E:\����������\����\��Ʒ��ݻ���\2010���ݼ���ǰ.dta,clear
collapse (sum) v,by(hs6)    // ����2010���Ʒ�������
rename v sumv
save E:\����������\����\����ˮƽ\2010��Ʒ����.dta,replace
use E:\����������\����\��Ʒ��ݻ���\2010���ݼ���ǰ.dta,clear
merge m:1 hs6 using E:\����������\����\����ˮƽ\2010��Ʒ����.dta
drop _merge
drop if missing(t, hs6, hs1996, i ,j ,v ,q ,iso3 ,hs6iso3 ,sumv )
save E:\����������\����\����ˮƽ\2010���ϲ�.dta,replace

*2011������               //����ÿ�ֲ�Ʒ�������ϵĳ����ܶ� 
use E:\����������\����\��Ʒ��ݻ���\2011���ݼ���ǰ.dta,clear
collapse (sum) v,by(hs6)    // ����2011���Ʒ�������
rename v sumv
save E:\����������\����\����ˮƽ\2011��Ʒ����.dta,replace
use E:\����������\����\��Ʒ��ݻ���\2011���ݼ���ǰ.dta,clear
merge m:1 hs6 using E:\����������\����\����ˮƽ\2011��Ʒ����.dta
drop _merge
drop if missing(t, hs6, hs1996, i ,j ,v ,q ,iso3 ,hs6iso3 ,sumv )
save E:\����������\����\����ˮƽ\2011���ϲ�.dta,replace

*2012������               //����ÿ�ֲ�Ʒ�������ϵĳ����ܶ� 
use E:\����������\����\��Ʒ��ݻ���\2012���ݼ���ǰ.dta,clear
collapse (sum) v,by(hs6)    // ����2012���Ʒ�������
rename v sumv
save E:\����������\����\����ˮƽ\2012��Ʒ����.dta,replace
use E:\����������\����\��Ʒ��ݻ���\2012���ݼ���ǰ.dta,clear
merge m:1 hs6 using E:\����������\����\����ˮƽ\2012��Ʒ����.dta
drop _merge
drop if missing(t, hs6, hs1996, i ,j ,v ,q ,iso3 ,hs6iso3 ,sumv )
save E:\����������\����\����ˮƽ\2012���ϲ�.dta,replace

*2013������               //����ÿ�ֲ�Ʒ�������ϵĳ����ܶ� 
use E:\����������\����\��Ʒ��ݻ���\2013���ݼ���ǰ.dta,clear
collapse (sum) v,by(hs6)    // ����2013���Ʒ�������
rename v sumv
save E:\����������\����\����ˮƽ\2013��Ʒ����.dta,replace
use E:\����������\����\��Ʒ��ݻ���\2013���ݼ���ǰ.dta,clear
merge m:1 hs6 using E:\����������\����\����ˮƽ\2013��Ʒ����.dta
drop _merge
drop if missing(t, hs6, hs1996, i ,j ,v ,q ,iso3 ,hs6iso3 ,sumv )
save E:\����������\����\����ˮƽ\2013���ϲ�.dta,replace

*2014������               //����ÿ�ֲ�Ʒ�������ϵĳ����ܶ� 
use E:\����������\����\��Ʒ��ݻ���\2014���ݼ���ǰ.dta,clear
collapse (sum) v,by(hs6)    // ����2014���Ʒ�������
rename v sumv
save E:\����������\����\����ˮƽ\2014��Ʒ����.dta,replace
use E:\����������\����\��Ʒ��ݻ���\2014���ݼ���ǰ.dta,clear
merge m:1 hs6 using E:\����������\����\����ˮƽ\2014��Ʒ����.dta
drop _merge
drop if missing(t, hs6, hs1996, i ,j ,v ,q ,iso3 ,hs6iso3 ,sumv )
save E:\����������\����\����ˮƽ\2014���ϲ�.dta,replace






*����2000��        //��������ˮƽ
use E:\����������\����\����ˮƽ\2000���ϲ�,clear
collapse (sum) v q,by(iso3 hs6)  //*�ϲ���ֵ������ 
rename v allv
rename q allq
save E:\����������\����\����ˮƽ\2000�����ܼ�.dta,replace
merge m:1 hs6 using E:\����������\����\����ˮƽ\2000��Ʒ����.dta
drop _merge
*����ݶ�
gen share=allv/sumv
*������
gen unitp=allv/allq
*����ݶ�*����
gen sp=share*unitp
collapse (sum) sp ,by(hs6)  //*���ܷݶ�˵��� 
save E:\����������\����\����ˮƽ\2000sharep.dta,replace
use E:\����������\����\����ˮƽ\2000�����ܼ�.dta,clear
encode iso3,gen (id)
keep if id==40              //�����й���Ʒ
gen unitp=allv/allq
merge m:1 hs6 using E:\����������\����\����ˮƽ\2000sharep.dta
gen qk=unitp/sp                  //�����Ʒ����ˮƽ
drop _merge
drop if qk==.
gen t=2000
save  E:\����������\����\����ˮƽ\2000����Ʒ����ˮƽ.dta

*����2001��        //��������ˮƽ
use E:\����������\����\����ˮƽ\2001���ϲ�,clear
collapse (sum) v q,by(iso3 hs6)  //*�ϲ���ֵ������ 
rename v allv
rename q allq
save E:\����������\����\����ˮƽ\2001�����ܼ�.dta,replace
merge m:1 hs6 using E:\����������\����\����ˮƽ\2001��Ʒ����.dta
drop _merge
*����ݶ�
gen share=allv/sumv
*������
gen unitp=allv/allq
*����ݶ�*����
gen sp=share*unitp
collapse (sum) sp ,by(hs6)  //*���ܷݶ�˵��� 
save E:\����������\����\����ˮƽ\2001sharep.dta,replace
use E:\����������\����\����ˮƽ\2001�����ܼ�.dta,clear
encode iso3,gen (id)
keep if id==40              //�����й���Ʒ
gen unitp=allv/allq
merge m:1 hs6 using E:\����������\����\����ˮƽ\2001sharep.dta
gen qk=unitp/sp                  //�����Ʒ����ˮƽ
drop _merge
drop if qk==.
gen t=2001
save  E:\����������\����\����ˮƽ\2001����Ʒ����ˮƽ.dta

*����2002��        //��������ˮƽ
use E:\����������\����\����ˮƽ\2002���ϲ�,clear
collapse (sum) v q,by(iso3 hs6)  //*�ϲ���ֵ������ 
rename v allv
rename q allq
save E:\����������\����\����ˮƽ\2002�����ܼ�.dta,replace
merge m:1 hs6 using E:\����������\����\����ˮƽ\2002��Ʒ����.dta
drop _merge
*����ݶ�
gen share=allv/sumv
*������
gen unitp=allv/allq
*����ݶ�*����
gen sp=share*unitp
collapse (sum) sp ,by(hs6)  //*���ܷݶ�˵��� 
save E:\����������\����\����ˮƽ\2002sharep.dta,replace
use E:\����������\����\����ˮƽ\2002�����ܼ�.dta,clear
encode iso3,gen (id)
keep if id==40              //�����й���Ʒ
gen unitp=allv/allq
merge m:1 hs6 using E:\����������\����\����ˮƽ\2002sharep.dta
gen qk=unitp/sp                  //�����Ʒ����ˮƽ
drop _merge
drop if qk==.
gen t=2002
save  E:\����������\����\����ˮƽ\2002����Ʒ����ˮƽ.dta

*����2003��        //��������ˮƽ
use E:\����������\����\����ˮƽ\2003���ϲ�,clear
collapse (sum) v q,by(iso3 hs6)  //*�ϲ���ֵ������ 
rename v allv
rename q allq
save E:\����������\����\����ˮƽ\2003�����ܼ�.dta,replace
merge m:1 hs6 using E:\����������\����\����ˮƽ\2003��Ʒ����.dta
drop _merge
*����ݶ�
gen share=allv/sumv
*������
gen unitp=allv/allq
*����ݶ�*����
gen sp=share*unitp
collapse (sum) sp ,by(hs6)  //*���ܷݶ�˵��� 
save E:\����������\����\����ˮƽ\2003sharep.dta,replace
use E:\����������\����\����ˮƽ\2003�����ܼ�.dta,clear
encode iso3,gen (id)
keep if id==40              //�����й���Ʒ
gen unitp=allv/allq
merge m:1 hs6 using E:\����������\����\����ˮƽ\2003sharep.dta
gen qk=unitp/sp                  //�����Ʒ����ˮƽ
drop _merge
drop if qk==.
gen t=2003
save  E:\����������\����\����ˮƽ\2003����Ʒ����ˮƽ.dta

*����2004��        //��������ˮƽ
use E:\����������\����\����ˮƽ\2004���ϲ�,clear
collapse (sum) v q,by(iso3 hs6)  //*�ϲ���ֵ������ 
rename v allv
rename q allq
save E:\����������\����\����ˮƽ\2004�����ܼ�.dta,replace
merge m:1 hs6 using E:\����������\����\����ˮƽ\2004��Ʒ����.dta
drop _merge
*����ݶ�
gen share=allv/sumv
*������
gen unitp=allv/allq
*����ݶ�*����
gen sp=share*unitp
collapse (sum) sp ,by(hs6)  //*���ܷݶ�˵��� 
save E:\����������\����\����ˮƽ\2004sharep.dta,replace
use E:\����������\����\����ˮƽ\2004�����ܼ�.dta,clear
encode iso3,gen (id)
keep if id==40              //�����й���Ʒ
gen unitp=allv/allq
merge m:1 hs6 using E:\����������\����\����ˮƽ\2004sharep.dta
gen qk=unitp/sp                  //�����Ʒ����ˮƽ
drop _merge
drop if qk==.
gen t=2004
save  E:\����������\����\����ˮƽ\2004����Ʒ����ˮƽ.dta

*����2005��        //��������ˮƽ
use E:\����������\����\����ˮƽ\2005���ϲ�,clear
collapse (sum) v q,by(iso3 hs6)  //*�ϲ���ֵ������ 
rename v allv
rename q allq
save E:\����������\����\����ˮƽ\2005�����ܼ�.dta,replace
merge m:1 hs6 using E:\����������\����\����ˮƽ\2005��Ʒ����.dta
drop _merge
*����ݶ�
gen share=allv/sumv
*������
gen unitp=allv/allq
*����ݶ�*����
gen sp=share*unitp
collapse (sum) sp ,by(hs6)  //*���ܷݶ�˵��� 
save E:\����������\����\����ˮƽ\2005sharep.dta,replace
use E:\����������\����\����ˮƽ\2005�����ܼ�.dta,clear
encode iso3,gen (id)
keep if id==40              //�����й���Ʒ
gen unitp=allv/allq
merge m:1 hs6 using E:\����������\����\����ˮƽ\2005sharep.dta
gen qk=unitp/sp                  //�����Ʒ����ˮƽ
drop _merge
drop if qk==.
gen t=2005
save  E:\����������\����\����ˮƽ\2005����Ʒ����ˮƽ.dta

*����2006��        //��������ˮƽ
use E:\����������\����\����ˮƽ\2006���ϲ�,clear
collapse (sum) v q,by(iso3 hs6)  //*�ϲ���ֵ������ 
rename v allv
rename q allq
save E:\����������\����\����ˮƽ\2006�����ܼ�.dta,replace
merge m:1 hs6 using E:\����������\����\����ˮƽ\2006��Ʒ����.dta
drop _merge
*����ݶ�
gen share=allv/sumv
*������
gen unitp=allv/allq
*����ݶ�*����
gen sp=share*unitp
collapse (sum) sp ,by(hs6)  //*���ܷݶ�˵��� 
save E:\����������\����\����ˮƽ\2006sharep.dta,replace
use E:\����������\����\����ˮƽ\2006�����ܼ�.dta,clear
encode iso3,gen (id)
keep if id==40              //�����й���Ʒ
gen unitp=allv/allq
merge m:1 hs6 using E:\����������\����\����ˮƽ\2006sharep.dta
gen qk=unitp/sp                  //�����Ʒ����ˮƽ
drop _merge
drop if qk==.
gen t=2006
save  E:\����������\����\����ˮƽ\2006����Ʒ����ˮƽ.dta

*����2007��        //��������ˮƽ
use E:\����������\����\����ˮƽ\2007���ϲ�,clear
collapse (sum) v q,by(iso3 hs6)  //*�ϲ���ֵ������ 
rename v allv
rename q allq
save E:\����������\����\����ˮƽ\2007�����ܼ�.dta,replace
merge m:1 hs6 using E:\����������\����\����ˮƽ\2007��Ʒ����.dta
drop _merge
*����ݶ�
gen share=allv/sumv
*������
gen unitp=allv/allq
*����ݶ�*����
gen sp=share*unitp
collapse (sum) sp ,by(hs6)  //*���ܷݶ�˵��� 
save E:\����������\����\����ˮƽ\2007sharep.dta,replace
use E:\����������\����\����ˮƽ\2007�����ܼ�.dta,clear
encode iso3,gen (id)
keep if id==40              //�����й���Ʒ
gen unitp=allv/allq
merge m:1 hs6 using E:\����������\����\����ˮƽ\2007sharep.dta
gen qk=unitp/sp                  //�����Ʒ����ˮƽ
drop _merge
drop if qk==.
gen t=2007
save  E:\����������\����\����ˮƽ\2007����Ʒ����ˮƽ.dta

*����2008��        //��������ˮƽ
use E:\����������\����\����ˮƽ\2008���ϲ�,clear
collapse (sum) v q,by(iso3 hs6)  //*�ϲ���ֵ������ 
rename v allv
rename q allq
save E:\����������\����\����ˮƽ\2008�����ܼ�.dta,replace
merge m:1 hs6 using E:\����������\����\����ˮƽ\2008��Ʒ����.dta
drop _merge
*����ݶ�
gen share=allv/sumv
*������
gen unitp=allv/allq
*����ݶ�*����
gen sp=share*unitp
collapse (sum) sp ,by(hs6)  //*���ܷݶ�˵��� 
save E:\����������\����\����ˮƽ\2008sharep.dta,replace
use E:\����������\����\����ˮƽ\2008�����ܼ�.dta,clear
encode iso3,gen (id)
keep if id==40              //�����й���Ʒ
gen unitp=allv/allq
merge m:1 hs6 using E:\����������\����\����ˮƽ\2008sharep.dta
gen qk=unitp/sp                  //�����Ʒ����ˮƽ
drop _merge
drop if qk==.
gen t=2008
save  E:\����������\����\����ˮƽ\2008����Ʒ����ˮƽ.dta

*����2009��        //��������ˮƽ
use E:\����������\����\����ˮƽ\2009���ϲ�,clear
collapse (sum) v q,by(iso3 hs6)  //*�ϲ���ֵ������ 
rename v allv
rename q allq
save E:\����������\����\����ˮƽ\2009�����ܼ�.dta,replace
merge m:1 hs6 using E:\����������\����\����ˮƽ\2009��Ʒ����.dta
drop _merge
*����ݶ�
gen share=allv/sumv
*������
gen unitp=allv/allq
*����ݶ�*����
gen sp=share*unitp
collapse (sum) sp ,by(hs6)  //*���ܷݶ�˵��� 
save E:\����������\����\����ˮƽ\2009sharep.dta,replace
use E:\����������\����\����ˮƽ\2009�����ܼ�.dta,clear
encode iso3,gen (id)
keep if id==40              //�����й���Ʒ
gen unitp=allv/allq
merge m:1 hs6 using E:\����������\����\����ˮƽ\2009sharep.dta
gen qk=unitp/sp                  //�����Ʒ����ˮƽ
drop _merge
drop if qk==.
gen t=2009
save  E:\����������\����\����ˮƽ\2009����Ʒ����ˮƽ.dta

*����2010��        //��������ˮƽ
use E:\����������\����\����ˮƽ\2010���ϲ�,clear
collapse (sum) v q,by(iso3 hs6)  //*�ϲ���ֵ������ 
rename v allv
rename q allq
save E:\����������\����\����ˮƽ\2010�����ܼ�.dta,replace
merge m:1 hs6 using E:\����������\����\����ˮƽ\2010��Ʒ����.dta
drop _merge
*����ݶ�
gen share=allv/sumv
*������
gen unitp=allv/allq
*����ݶ�*����
gen sp=share*unitp
collapse (sum) sp ,by(hs6)  //*���ܷݶ�˵��� 
save E:\����������\����\����ˮƽ\2010sharep.dta,replace
use E:\����������\����\����ˮƽ\2010�����ܼ�.dta,clear
encode iso3,gen (id)
keep if id==40              //�����й���Ʒ
gen unitp=allv/allq
merge m:1 hs6 using E:\����������\����\����ˮƽ\2010sharep.dta
gen qk=unitp/sp                  //�����Ʒ����ˮƽ
drop _merge
drop if qk==.
gen t=2010
save  E:\����������\����\����ˮƽ\2010����Ʒ����ˮƽ.dta

*����2011��        //��������ˮƽ
use E:\����������\����\����ˮƽ\2011���ϲ�,clear
collapse (sum) v q,by(iso3 hs6)  //*�ϲ���ֵ������ 
rename v allv
rename q allq
save E:\����������\����\����ˮƽ\2011�����ܼ�.dta,replace
merge m:1 hs6 using E:\����������\����\����ˮƽ\2011��Ʒ����.dta
drop _merge
*����ݶ�
gen share=allv/sumv
*������
gen unitp=allv/allq
*����ݶ�*����
gen sp=share*unitp
collapse (sum) sp ,by(hs6)  //*���ܷݶ�˵��� 
save E:\����������\����\����ˮƽ\2011sharep.dta,replace
use E:\����������\����\����ˮƽ\2011�����ܼ�.dta,clear
encode iso3,gen (id)
keep if id==40              //�����й���Ʒ
gen unitp=allv/allq
merge m:1 hs6 using E:\����������\����\����ˮƽ\2011sharep.dta
gen qk=unitp/sp                  //�����Ʒ����ˮƽ
drop _merge
drop if qk==.
gen t=2011
save  E:\����������\����\����ˮƽ\2011����Ʒ����ˮƽ.dta

*����2012��        //��������ˮƽ
use E:\����������\����\����ˮƽ\2012���ϲ�,clear
collapse (sum) v q,by(iso3 hs6)  //*�ϲ���ֵ������ 
rename v allv
rename q allq
save E:\����������\����\����ˮƽ\2012�����ܼ�.dta,replace
merge m:1 hs6 using E:\����������\����\����ˮƽ\2012��Ʒ����.dta
drop _merge
*����ݶ�
gen share=allv/sumv
*������
gen unitp=allv/allq
*����ݶ�*����
gen sp=share*unitp
collapse (sum) sp ,by(hs6)  //*���ܷݶ�˵��� 
save E:\����������\����\����ˮƽ\2012sharep.dta,replace
use E:\����������\����\����ˮƽ\2012�����ܼ�.dta,clear
encode iso3,gen (id)
keep if id==40              //�����й���Ʒ
gen unitp=allv/allq
merge m:1 hs6 using E:\����������\����\����ˮƽ\2012sharep.dta
gen qk=unitp/sp                  //�����Ʒ����ˮƽ
drop _merge
drop if qk==.
gen t=2012
save  E:\����������\����\����ˮƽ\2012����Ʒ����ˮƽ.dta

*����2013��        //��������ˮƽ
use E:\����������\����\����ˮƽ\2013���ϲ�,clear
collapse (sum) v q,by(iso3 hs6)  //*�ϲ���ֵ������ 
rename v allv
rename q allq
save E:\����������\����\����ˮƽ\2013�����ܼ�.dta,replace
merge m:1 hs6 using E:\����������\����\����ˮƽ\2013��Ʒ����.dta
drop _merge
*����ݶ�
gen share=allv/sumv
*������
gen unitp=allv/allq
*����ݶ�*����
gen sp=share*unitp
collapse (sum) sp ,by(hs6)  //*���ܷݶ�˵��� 
save E:\����������\����\����ˮƽ\2013sharep.dta,replace
use E:\����������\����\����ˮƽ\2013�����ܼ�.dta,clear
encode iso3,gen (id)
keep if id==40              //�����й���Ʒ
gen unitp=allv/allq
merge m:1 hs6 using E:\����������\����\����ˮƽ\2013sharep.dta
gen qk=unitp/sp                  //�����Ʒ����ˮƽ
drop _merge
drop if qk==.
gen t=2013
save  E:\����������\����\����ˮƽ\2013����Ʒ����ˮƽ.dta

*����2014��        //��������ˮƽ
use E:\����������\����\����ˮƽ\2014���ϲ�,clear
collapse (sum) v q,by(iso3 hs6)  //*�ϲ���ֵ������ 
rename v allv
rename q allq
save E:\����������\����\����ˮƽ\2014�����ܼ�.dta,replace
merge m:1 hs6 using E:\����������\����\����ˮƽ\2014��Ʒ����.dta
drop _merge
*����ݶ�
gen share=allv/sumv
*������
gen unitp=allv/allq
*����ݶ�*����
gen sp=share*unitp
collapse (sum) sp ,by(hs6)  //*���ܷݶ�˵��� 
save E:\����������\����\����ˮƽ\2014sharep.dta,replace
use E:\����������\����\����ˮƽ\2014�����ܼ�.dta,clear
encode iso3,gen (id)
keep if id==40              //�����й���Ʒ
gen unitp=allv/allq
merge m:1 hs6 using E:\����������\����\����ˮƽ\2014sharep.dta
gen qk=unitp/sp                  //�����Ʒ����ˮƽ
drop _merge
drop if qk==.
gen t=2014
save  E:\����������\����\����ˮƽ\2014����Ʒ����ˮƽ.dta


*�ϲ�1998-2011 ����
use  E:\����������\����\����ˮƽ\2000����Ʒ����ˮƽ.dta,clear
 append using E:\����������\����\����ˮƽ\2001����Ʒ����ˮƽ.dta
 append using E:\����������\����\����ˮƽ\2002����Ʒ����ˮƽ.dta
 append using E:\����������\����\����ˮƽ\2003����Ʒ����ˮƽ.dta
 append using E:\����������\����\����ˮƽ\2004����Ʒ����ˮƽ.dta
 append using E:\����������\����\����ˮƽ\2005����Ʒ����ˮƽ.dta
 append using E:\����������\����\����ˮƽ\2006����Ʒ����ˮƽ.dta
 append using E:\����������\����\����ˮƽ\2007����Ʒ����ˮƽ.dta
 append using E:\����������\����\����ˮƽ\2008����Ʒ����ˮƽ.dta
 append using E:\����������\����\����ˮƽ\2009����Ʒ����ˮƽ.dta
 append using E:\����������\����\����ˮƽ\2010����Ʒ����ˮƽ.dta
 append using E:\����������\����\����ˮƽ\2011����Ʒ����ˮƽ.dta
 append using E:\����������\����\����ˮƽ\2012����Ʒ����ˮƽ.dta
 append using E:\����������\����\����ˮƽ\2013����Ʒ����ˮƽ.dta
 append using E:\����������\����\����ˮƽ\2014����Ʒ����ˮƽ.dta
drop allv allq sp unitp
save E:\����������\����\����ˮƽ\2000��2014������ˮƽ.dta


*2.ƥ��VSS�Ͳ�Ʒ����

use E:\����������\����\�������Ӷ�\��Ʒ���漼�����Ӷ�.dta,clear //ƥ��������VSS
rename hs6 hs96
merge n:1 hs96 using E:\����������\����\����ƥ��\hs96io1.dta
drop _merge
merge n:1 io year using E:\����������\����\VSS\VSS.dta   //ƥ���ƷVSSˮƽ
drop _merge
rename hs96 hs6
rename year t
merge n:1 hs6 t using E:\����������\����\����ˮƽ\2000��2014������ˮƽ.dta //ƥ���Ʒ����
drop if missing( vss ,qk) 
drop if ss == 2
drop ss
drop _merge


*������ڼ������ӶȲ�Ʒ����

gen newprody =((qk)^0.2)*(1-vss)*(prody)
save E:\����������\����\�������Ӷ�\��Ʒ���漼�����Ӷȹ���.dta,replace

*����ȫ���͹��ڼ������Ӷȹ��Ҳ���
use E:\����������\����\�������Ӷ�\�������ӵĻ�������.dta,clear 
encode id ,gen(export)
keep if export == 39
rename year t 
drop id 
merge n:1 t hs6 using E:\����������\����\�������Ӷ�\��Ʒ���漼�����Ӷȹ���.dta
drop _merge
gen expy =x*prody
gen newexpy =x*newprody
collapse (sum) expy newexpy,by( t)
save E:\����������\����\�������Ӷ�\ȫ���͹��ڼ������Ӷȹ��Ҳ���.dta

use E:\����������\����\�������Ӷ�\ȫ���͹��ڼ������Ӷȹ��Ҳ���.dta,clear




*����������ڳ���ʱ��*

use E:\����������\����\��Ʒ��ݻ���\2000���ݼ���ǰ.dta,clear
encode iso3 ,gen(id)
drop if id != 40
drop iso3 q hs6iso3
save E:\����������\����\���ڳ���ʱ��\2000���й���������.dta

use E:\����������\����\��Ʒ��ݻ���\2001���ݼ���ǰ.dta,clear
encode iso3 ,gen(id)
drop if id != 40
drop iso3 q hs6iso3
save E:\����������\����\���ڳ���ʱ��\2001���й���������.dta

use E:\����������\����\��Ʒ��ݻ���\2002���ݼ���ǰ.dta,clear
encode iso3 ,gen(id)
drop if id != 40
drop iso3 q hs6iso3
save E:\����������\����\���ڳ���ʱ��\2002���й���������.dta

use E:\����������\����\��Ʒ��ݻ���\2003���ݼ���ǰ.dta,clear
encode iso3 ,gen(id)
drop if id != 40
drop iso3 q hs6iso3
save E:\����������\����\���ڳ���ʱ��\2003���й���������.dta

use E:\����������\����\��Ʒ��ݻ���\2004���ݼ���ǰ.dta,clear
encode iso3 ,gen(id)
drop if id != 40
drop iso3 q hs6iso3
save E:\����������\����\���ڳ���ʱ��\2004���й���������.dta

use E:\����������\����\��Ʒ��ݻ���\2005���ݼ���ǰ.dta,clear
encode iso3 ,gen(id)
drop if id != 40
drop iso3 q hs6iso3
save E:\����������\����\���ڳ���ʱ��\2005���й���������.dta

use E:\����������\����\��Ʒ��ݻ���\2006���ݼ���ǰ.dta,clear
encode iso3 ,gen(id)
drop if id != 40
drop iso3 q hs6iso3
save E:\����������\����\���ڳ���ʱ��\2006���й���������.dta

use E:\����������\����\��Ʒ��ݻ���\2007���ݼ���ǰ.dta,clear
encode iso3 ,gen(id)
drop if id != 40
drop iso3 q hs6iso3
save E:\����������\����\���ڳ���ʱ��\2007���й���������.dta

use E:\����������\����\��Ʒ��ݻ���\2008���ݼ���ǰ.dta,clear
encode iso3 ,gen(id)
drop if id != 40
drop iso3 q hs6iso3
save E:\����������\����\���ڳ���ʱ��\2008���й���������.dta

use E:\����������\����\��Ʒ��ݻ���\2009���ݼ���ǰ.dta,clear
encode iso3 ,gen(id)
drop if id != 40
drop iso3 q hs6iso3
save E:\����������\����\���ڳ���ʱ��\2009���й���������.dta

use E:\����������\����\��Ʒ��ݻ���\2010���ݼ���ǰ.dta,clear
encode iso3 ,gen(id)
drop if id != 40
drop iso3 q hs6iso3
save E:\����������\����\���ڳ���ʱ��\2010���й���������.dta

use E:\����������\����\��Ʒ��ݻ���\2011���ݼ���ǰ.dta,clear
encode iso3 ,gen(id)
drop if id != 40
drop iso3 q hs6iso3
save E:\����������\����\���ڳ���ʱ��\2011���й���������.dta

use E:\����������\����\��Ʒ��ݻ���\2012���ݼ���ǰ.dta,clear
encode iso3 ,gen(id)
drop if id != 40
drop iso3 q hs6iso3
save E:\����������\����\���ڳ���ʱ��\2012���й���������.dta

use E:\����������\����\��Ʒ��ݻ���\2013���ݼ���ǰ.dta,clear
encode iso3 ,gen(id)
drop if id != 40
drop iso3 q hs6iso3
save E:\����������\����\���ڳ���ʱ��\2013���й���������.dta

use E:\����������\����\��Ʒ��ݻ���\2014���ݼ���ǰ.dta,clear
encode iso3 ,gen(id)
drop if id != 40
drop iso3 q hs6iso3
save E:\����������\����\���ڳ���ʱ��\2014���й���������.dta

*����

use  E:\����������\����\���ڳ���ʱ��\2000���й���������.dta,clear
append using E:\����������\����\���ڳ���ʱ��\2001���й���������.dta
append using E:\����������\����\���ڳ���ʱ��\2002���й���������.dta
append using E:\����������\����\���ڳ���ʱ��\2003���й���������.dta
append using E:\����������\����\���ڳ���ʱ��\2004���й���������.dta
append using E:\����������\����\���ڳ���ʱ��\2005���й���������.dta
append using E:\����������\����\���ڳ���ʱ��\2006���й���������.dta
append using E:\����������\����\���ڳ���ʱ��\2007���й���������.dta
append using E:\����������\����\���ڳ���ʱ��\2008���й���������.dta
append using E:\����������\����\���ڳ���ʱ��\2009���й���������.dta
append using E:\����������\����\���ڳ���ʱ��\2010���й���������.dta
append using E:\����������\����\���ڳ���ʱ��\2011���й���������.dta
append using E:\����������\����\���ڳ���ʱ��\2012���й���������.dta
append using E:\����������\����\���ڳ���ʱ��\2013���й���������.dta
append using E:\����������\����\���ڳ���ʱ��\2014���й���������.dta

save E:\����������\����\���ڳ���ʱ��\2000-2014���й���������.dta,replace

*ƥ��Ŀ�ĵغͲ�Ʒ����

use E:\����������\����\���ڳ���ʱ��\2000-2014���й���������.dta,clear
merge n:n hs1996 using E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\���ݺϲ�\����ƥ��.dta   //ƥ��ISIC����
drop _merge
merge n:n j using E:\����������\����\����ƥ��\����ƥ��.dta
drop _merge
rename imper iso3
merge n:1 iso3 using E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\���ݺϲ�\������.dta 
drop _merge
merge n:1 isic2 using E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\���ݺϲ�\OECD��Ʒ����.dta
drop _merge
gen impotergoods=iso3+hs6
encode impotergoods,gen(importgood)
drop j 
save  E:\����������\����\���ڳ���ʱ��\�������.dta,replace


*��������������ͱ���
use E:\����������\����\���ڳ���ʱ��\�������.dta,clear
drop if v == .
duplicates drop impotergood t, force
xtset impotergood t
encode iso3,gen(ss)
drop if ss == .
drop if ss == 1
drop ss
*��ɾ������
gen t1=F.t
drop if t == 2000  & t1 == .  //ɾ��2000�����

gen t2=F.t1
drop if t == 2000  & t1 == 2001 & t2 ==.  //ɾ��2000-2001�����

gen t3=F.t2
drop if t == 2000  & t1 == 2001 & t2 ==2002 & t3 ==.  //ɾ��2000-2002�����

gen t4=F.t3
drop if t == 2000  & t1 == 2001 & t2 ==2002 & t3 ==2003 & t4== .  //ɾ��2000-2003�����

gen t5=F.t4
drop if t == 2000  & t1 == 2001 & t2 ==2002 & t3 ==2003 & t4== 2004 & t5== .  //ɾ��2000-2004�����

gen t6=F.t5
drop if t == 2000  & t1 == 2001 & t2 ==2002 & t3 ==2003 & t4== 2004 & t5== 2005 & t6==.  //ɾ��2000-2005�����

gen t7=F.t6
drop if t == 2000  & t1 == 2001 & t2 ==2002 & t3 ==2003 & t4== 2004 & t5== 2005 & t6==2006 & t7 ==.   //ɾ��2000-2006�����

gen t8=F.t7
drop if t == 2000  & t1 == 2001 & t2 ==2002 & t3 ==2003 & t4== 2004 & t5== 2005 & t6==2006 & t7 ==2007 &t8 ==.   //ɾ��2000-2007�����

gen t9=F.t8
drop if t == 2000  & t1 == 2001 & t2 ==2002 & t3 ==2003 & t4== 2004 & t5== 2005 & t6==2006 & t7 ==2007 &t8 ==2008 & t9 ==.   //ɾ��2000-2008�����

gen t10=F.t9
drop if t == 2000  & t1 == 2001 & t2 ==2002 & t3 ==2003 & t4== 2004 & t5== 2005 & t6==2006 & t7 ==2007 &t8 ==2008 & t9 ==2009 & t10 ==.   //ɾ��2000-2009�����

gen t11=F.t10
drop if t == 2000  & t1 == 2001 & t2 ==2002 & t3 ==2003 & t4== 2004 & t5== 2005 & t6==2006 & t7 ==2007 &t8 ==2008 & t9 ==2009 & t10 ==2010 & t11 ==.  //ɾ��2000-2010�����

gen t12=F.t11
drop if t == 2000  & t1 == 2001 & t2 ==2002 & t3 ==2003 & t4== 2004 & t5== 2005 & t6==2006 & t7 ==2007 &t8 ==2008 & t9 ==2009 & t10 ==2010 & t11 ==2011 & t12 == .  //ɾ��2000-2011�����

gen t13=F.t12
drop if t == 2000  & t1 == 2001 & t2 ==2002 & t3 ==2003 & t4== 2004 & t5== 2005 & t6==2006 & t7 ==2007 &t8 ==2008 & t9 ==2009 & t10 ==2010 & t11 ==2011 & t12 == 2012 & t13 ==.  //ɾ��2000-2012�����

gen t14=F.t13
drop if t == 2000  & t1 == 2001 & t2 ==2002 & t3 ==2003 & t4== 2004 & t5== 2005 & t6==2006 & t7 ==2007 &t8 ==2008 & t9 ==2009 & t10 ==2010 & t11 ==2011 & t12 == 2012 & t13 ==2013 & t14 ==.  //ɾ��2000-2013�����

gen t15=F.t14
drop if t == 2000  & t1 == 2001 & t2 ==2002 & t3 ==2003 & t4== 2004 & t5== 2005 & t6==2006 & t7 ==2007 &t8 ==2008 & t9 ==2009 & t10 ==2010 & t11 ==2011 & t12 == 2012 & t13 ==2013 & t14 ==2014  & t15 ==.  //ɾ��2000-2014�����
drop t1-t15
save E:\����������\����\���ڳ���ʱ��\��ɾ��.dta,replace

*������ڵĳ���ʱ�����
gen lag1=L.t     //�ͺ�1��
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

save E:\����������\����\���ڳ���ʱ��\��ɾ���г��ڵĳ���ʱ��.dta,replace

*�ġ�����ع�����



*1��ƥ���Ʒ�ļ۸�
*���㵥λ��ֵ

use E:\����������\����\��Ʒ��ݻ���\2000���ݼ���ǰ.dta,clear
gen unitp=v/q
keep if i == 156
drop i 
rename j i
merge n:n i using ����ƥ��.dta ,update replace          //ƥ�����
gen impotergoods=iso3+hs6
drop _merge
save E:\����������\����\��Ʒ��ݻ���\2000������.dta��replace

use E:\����������\����\��Ʒ��ݻ���\2001���ݼ���ǰ.dta,clear
gen unitp=v/q
keep if i == 156
drop i 
rename j i
merge n:n i using ����ƥ��.dta ,update replace          //ƥ�����
gen impotergoods=iso3+hs6
drop _merge
save E:\����������\����\��Ʒ��ݻ���\2001������.dta

use E:\����������\����\��Ʒ��ݻ���\2002���ݼ���ǰ.dta
gen unitp=v/q
keep if i == 156
drop i 
rename j i
merge n:n i using ����ƥ��.dta ,update replace          //ƥ�����
gen impotergoods=iso3+hs6
drop _merge
save E:\����������\����\��Ʒ��ݻ���\2002������.dta

use E:\����������\����\��Ʒ��ݻ���\2003���ݼ���ǰ.dta,clear
gen unitp=v/q
keep if i == 156
drop i 
rename j i
merge n:n i using ����ƥ��.dta ,update replace          //ƥ�����
gen impotergoods=iso3+hs6
drop _merge
save E:\����������\����\��Ʒ��ݻ���\2003������.dta

use E:\����������\����\��Ʒ��ݻ���\2004���ݼ���ǰ.dta,clear
gen unitp=v/q
keep if i == 156
drop i 
rename j i
merge n:n i using ����ƥ��.dta ,update replace          //ƥ�����
gen impotergoods=iso3+hs6
drop _merge
save E:\����������\����\��Ʒ��ݻ���\2004������.dta

use E:\����������\����\��Ʒ��ݻ���\2005���ݼ���ǰ.dta,clear
gen unitp=v/q
keep if i == 156
drop i 
rename j i
merge n:n i using ����ƥ��.dta ,update replace          //ƥ�����
gen impotergoods=iso3+hs6
drop _merge
save E:\����������\����\��Ʒ��ݻ���\2005������.dta

use E:\����������\����\��Ʒ��ݻ���\2006���ݼ���ǰ.dta,clear
gen unitp=v/q
keep if i == 156
drop i 
rename j i
merge n:n i using ����ƥ��.dta ,update replace          //ƥ�����
gen impotergoods=iso3+hs6
drop _merge
save E:\����������\����\��Ʒ��ݻ���\2006������.dta

use E:\����������\����\��Ʒ��ݻ���\2007���ݼ���ǰ.dta,clear
gen unitp=v/q
keep if i == 156
drop i 
rename j i
merge n:n i using ����ƥ��.dta ,update replace          //ƥ�����
gen impotergoods=iso3+hs6
drop _merge
save E:\����������\����\��Ʒ��ݻ���\2007������.dta

use E:\����������\����\��Ʒ��ݻ���\2008���ݼ���ǰ.dta,clear
gen unitp=v/q
keep if i == 156
drop i 
rename j i
merge n:n i using ����ƥ��.dta ,update replace          //ƥ�����
gen impotergoods=iso3+hs6
drop _merge
save E:\����������\����\��Ʒ��ݻ���\2008������.dta

use E:\����������\����\��Ʒ��ݻ���\2009���ݼ���ǰ.dta,clear
gen unitp=v/q
keep if i == 156
drop i 
rename j i
merge n:n i using ����ƥ��.dta ,update replace          //ƥ�����
gen impotergoods=iso3+hs6
drop _merge
save E:\����������\����\��Ʒ��ݻ���\2009������.dta

use E:\����������\����\��Ʒ��ݻ���\2010���ݼ���ǰ.dta,clear
gen unitp=v/q
keep if i == 156
drop i 
rename j i
merge n:n i using ����ƥ��.dta ,update replace          //ƥ�����
gen impotergoods=iso3+hs6
drop _merge
save E:\����������\����\��Ʒ��ݻ���\2010������.dta

use E:\����������\����\��Ʒ��ݻ���\2011���ݼ���ǰ.dta,clear
gen unitp=v/q
keep if i == 156
drop i 
rename j i
merge n:n i using ����ƥ��.dta ,update replace          //ƥ�����
gen impotergoods=iso3+hs6
drop _merge
save E:\����������\����\��Ʒ��ݻ���\2011������.dta

use E:\����������\����\��Ʒ��ݻ���\2012���ݼ���ǰ.dta,clear
gen unitp=v/q
keep if i == 156
drop i 
rename j i
merge n:n i using ����ƥ��.dta ,update replace          //ƥ�����
gen impotergoods=iso3+hs6
drop _merge
save E:\����������\����\��Ʒ��ݻ���\2012������.dta

use E:\����������\����\��Ʒ��ݻ���\2013���ݼ���ǰ.dta,clear
gen unitp=v/q
keep if i == 156
drop i 
rename j i
merge n:n i using ����ƥ��.dta ,update replace          //ƥ�����
gen impotergoods=iso3+hs6
drop _merge
save E:\����������\����\��Ʒ��ݻ���\2013������.dta

use E:\����������\����\��Ʒ��ݻ���\2014���ݼ���ǰ.dta,clear
gen unitp=v/q
keep if i == 156
drop i 
rename j i
merge n:n i using ����ƥ��.dta ,update replace          //ƥ�����
gen impotergoods=iso3+hs6
drop _merge
save E:\����������\����\��Ʒ��ݻ���\2014������.dta

use E:\����������\����\��Ʒ��ݻ���\2000������.dta,clear
append using  E:\����������\����\��Ʒ��ݻ���\2001������.dta
append using  E:\����������\����\��Ʒ��ݻ���\2002������.dta
append using  E:\����������\����\��Ʒ��ݻ���\2003������.dta
append using  E:\����������\����\��Ʒ��ݻ���\2004������.dta
append using  E:\����������\����\��Ʒ��ݻ���\2005������.dta
append using  E:\����������\����\��Ʒ��ݻ���\2006������.dta
append using  E:\����������\����\��Ʒ��ݻ���\2007������.dta
append using  E:\����������\����\��Ʒ��ݻ���\2008������.dta
append using  E:\����������\����\��Ʒ��ݻ���\2009������.dta
append using  E:\����������\����\��Ʒ��ݻ���\2010������.dta
append using  E:\����������\����\��Ʒ��ݻ���\2011������.dta
append using  E:\����������\����\��Ʒ��ݻ���\2012������.dta
append using  E:\����������\����\��Ʒ��ݻ���\2013������.dta
append using  E:\����������\����\��Ʒ��ݻ���\2014������.dta

save E:\����������\����\��Ʒ��ݻ���\2000-2014����.dta

use E:\����������\����\���ڳ���ʱ��\��ɾ���г��ڵĳ���ʱ��.dta,clear

merge n:n t impotergoods using E:\����������\����\��Ʒ��ݻ���\2000-2014����.dta
drop hs6iso3 _merge
drop if duration == .

*2��ƥ����ڲ�Ʒ�Ĺ��ڼ������Ӷ�
merge n:1 t hs6 using E:\����������\����\�������Ӷ�\��Ʒ���漼�����Ӷȹ���.dta
drop _merge qk io gbt 
drop if newprody == .
drop if duration ==.

save E:\����������\����\�ع�����\�ع�����.dta

*3��ƥ����ҵ��ģ
use E:\����������\����\�ع�����\�ع�����.dta,clear
collapse (sum) v ,by(t isic2)
rename v scale
save E:\����������\����\��ҵ��ģ\��ҵ��ģ.dta,replace

use E:\����������\����\�ع�����\�ع�����.dta,clear
merge n:1 isic2 t using E:\����������\����\��ҵ��ģ\��ҵ��ģ.dta
drop _merge

*4��ƥ����ڶ�
rename v exports

*5��ƥ���ƶ�����
merge n:1 t using E:\����������\����\�ƶ�����\�ƶ�����.dta 
drop _merge

*6��ƥ��ó�׿��Ŷ�
merge n:1 t using E:\����������\����\open\open.dta 
drop _merge

*7��ƥ�������ʱ�
merge n:1 t using E:\����������\����\�����ʱ�\�����ʱ�.dta 
drop _merge 

*8��ƥ�������ʩ
merge n:1 t using E:\����������\����\������ʩ\������ʩ.dta 
drop _merge 

*9��ƥ��FDI
merge n:1 t using E:\����������\����\fdi\fdi.dta 
drop _merge

*10��ƥ����ڷ�չ
merge n:1 t using E:\����������\����\fdi\fin.dta 
drop _merge

*11��ƥ��fta
merge n:1 t  iso3 using E:\����������\����\fdi\fta.dta 
drop _merge
replace fta = 0 if fta == .

*12��ƥ��gdp
merge n:1 t using E:\����������\����\fdi\gdp.dta 
drop _merge

*13��ƥ��������ʹ����
merge n:1 t using E:\����������\����\fdi\inter.dta 
drop _merge

*13��ƥ����
merge n:1 t using E:\����������\����\fdi\kuandai.dta 
drop _merge

*14��ƥ���з�
merge n:1 t using E:\����������\����\fdi\yanfa.dta 
drop _merge

*15��ƥ��̶��ʱ��γɶ�
merge n:1 t using E:\����������\����\fdi\ziben.dta 
drop _merge

*16��ƥ��ר��
merge n:1 t using E:\����������\����\fdi\zhuanli.dta 
drop _merge

*17���з���Ա
merge n:1 t using E:\����������\����\fdi\yanfareny.dta 
drop _merge

*18��˽�˲����ṩ���Ŵ�
merge n:1 t using E:\����������\����\fdi\private.dta 
drop _merge

*19����ҵ���ɶȺ�ó�����ɶ�
merge n:1 t using E:\����������\����\fdi\bustra.dta 
drop _merge



drop if hs1996 == .
save E:\����������\����\�ع�����\�ع�������.dta,replace



*�塢�ع�
use E:\����������\����\�ع�����\�ع�������.dta,clear
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
save E:\����������\����\�ع�����\�ع����б���.dta,replace
d
duplicates drop impotergood t,force
xtset impotergood t

*�жϹ̶�ЧӦ�������ЧӦ
xtreg lnnewprody lnduration lnunit lnvs  fta lnbusinessfreedom lntradefreedom if ins == 1,re 
est store m_re
xtreg newprody duration unit vs  fta businessfreedom tradefreedom if ins == 1,fe 
est store m_fe
hausman m_fe m_re   //ѡ��̶�ЧӦ

*�ܻع�
use  E:\����������\����\�ع�����\�ع����б���.dta,clear
duplicates drop impotergood t,force
xtset impotergood t


use  E:\����������\����\�ع�����\�ع����б���.dta,clear
tostring t,replace
gen idd = impotergoods + t
merge n:1 idd using E:\����������\idd.dta 
keep  if _merge == 3
destring t ,gen(year)
duplicates drop impotergood year,force
xtset impotergood year


******************�ع�***************
*��һ���ع�
*fe
xtreg lnnewprody lnduration lnunit lnvs  fta lnhamcap lnopen ,fe 
est store m1
*re
xtreg lnnewprody lnduration lnunit lnvs  fta lnhamcap lnopen ,re
est store m2
*2SLS
ivreg2 lnnewprody (lnduration=L.lnduration ) lnunit lnvs  fta lnhamcap lnopen ,gmm2s robust
est store m3
outreg2 [m1  m2 m3 ] using 11��ع�.xls,replace

*�ڶ���ع�

*���������
xtreg lnnewprody lnduration lnunit lnvs  fta lnhamcap lnopen if ins == 1,fe 
est store m11
ivreg2 lnnewprody (lnduration=L.lnduration) lnunit lnvs  fta lnhamcap lnopen if ins == 1,gmm2s robust
est store m12

*���������
xtreg lnnewprody lnduration lnunit lnvs  fta lnhamcap lnopen if ins == 3 | ins == 4,fe 
est store m13
ivreg2 lnnewprody (lnduration=L.lnduration) lnunit lnvs  fta lnhamcap lnopen if ins == 3 | ins == 4,gmm2s robust
est store m14

*���������
xtreg lnnewprody lnduration lnunit lnvs  fta lnhamcap lnopen if ins == 2,fe 
est store m15
ivreg2 lnnewprody (lnduration=L.lnduration) lnunit lnvs  fta lnhamcap lnopen if ins == 2,gmm2s robust
est store m16

outreg2 [m11  m12 m13  m14 m15  m16] using �ڶ���.xls,replace

*������ع�
*�߼���
xtreg lnnewprody lnduration lnunit lnvs  fta lnhamcap lnopen if isictype == 1,fe 
est store m21
ivreg2 lnnewprody (lnduration=L.lnduration) lnunit lnvs  fta lnhamcap lnopen if isictype == 1,gmm2s robust
est store m22

*�м���
xtreg lnnewprody lnduration lnunit lnvs  fta lnhamcap lnopen if isictype == 2,fe 
est store m23
ivreg2 lnnewprody (lnduration=L.lnduration) lnunit lnvs  fta lnhamcap lnopen if isictype == 2,gmm2s robust
est store m24

*�͵ͼ���
xtreg lnnewprody lnduration lnunit lnvs  fta lnhamcap lnopen if isictype == 3,fe 
est store m25
ivreg2 lnnewprody (lnduration=L.lnduration) lnunit lnvs  fta lnhamcap lnopen if isictype == 3,gmm2s robust
est store m26

outreg2 [m21  m22 m23  m24 m25  m26] using ������.xls,replace

*������ع�
*��ɾ��
*������ɾ������
ivreg2 lnnewprody (lnduration=L.lnduration) lnunit lnvs  fta lnhamcap lnopen ,gmm2s robust
est store m41
outreg2 [m41] using ��41.xls,replace

*ɾ����һ��������
use  E:\����������\����\�ع�����\�ع����б���.dta,clear
tostring t,replace
gen idd = impotergoods + t
merge n:1 idd using E:\����������\idd.dta 
drop  if _merge == 3
destring t ,gen(year)
duplicates drop impotergood year,force
xtset impotergood year
*������ɾ������
*fe
xtreg lnnewprody lnduration lnunit lnvs  fta lnhamcap lnopen ,fe 
est store m42
*re
xtreg lnnewprody lnduration lnunit lnvs  fta lnhamcap lnopen ,re
est store m43
*2SLS
ivreg2 lnnewprody (lnduration=L.lnduration ) lnunit lnvs  fta lnhamcap lnopen ,gmm2s robust
est store m44
outreg2 [m42  m43 m44 ] using 42��ع�.xls,replace



