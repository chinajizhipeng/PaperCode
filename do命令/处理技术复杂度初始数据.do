* 98�����ݴ���
clear
insheet using E:\��������\CEPII����\HS96\baci96_1998.csv
merge n:n i using ����ƥ��.dta ,update replace          //ƥ�����
tostring hs6 , replace  format(%06.0f)                  //��ֵ�ͱ��ַ���
gen hs6iso3=iso3+hs6
destring hs6,gen (hs1996)                               //hsҲ��5λ����
drop _merge 
save E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\��ݼ���\1998���ݼ���ǰ.dta,replace
collapse (sum) v,by(hs6iso3)                            //����-����-��Ʒ
gen tt="1998"
destring tt,gen( t)                                     //�������
drop tt
drop in 1/2285                                          //�������
g id=substr(hs6iso3,1,3)                                //���ӹ���
g hs6=substr(hs6iso3,4,9)                               //����HS����
save E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\��ݼ���\1998���ݼ��ܺ�.dta,replace




* 99�����ݴ���
clear
insheet using E:\��������\CEPII����\HS96\baci96_1999.csv
merge n:n i using ����ƥ��.dta ,update replace          //ƥ�����
tostring hs6 , replace  format(%06.0f)                  //��ֵ�ͱ��ַ���
gen hs6iso3=iso3+hs6
destring hs6,gen (hs1996)                               //hsҲ��5λ����
drop _merge 
save E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\��ݼ���\1999���ݼ���ǰ.dta,replace
collapse (sum) v,by(hs6iso3)                            //����-����-��Ʒ
gen tt="1999"
destring tt,gen( t)                                     //�������
drop tt
drop in 1/2390                                          //�������
g id=substr(hs6iso3,1,3)                                //���ӹ���
g hs6=substr(hs6iso3,4,9)                               //����HS����
save E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\��ݼ���\1999���ݼ��ܺ�.dta,replace



* 2000�����ݴ���
clear
insheet using E:\��������\CEPII����\HS96\baci96_2000.csv
merge n:n i using ����ƥ��.dta ,update replace          //ƥ�����
tostring hs6 , replace  format(%06.0f)                  //��ֵ�ͱ��ַ���
gen hs6iso3=iso3+hs6
destring hs6,gen (hs1996)                               //hsҲ��5λ����
drop _merge 
save E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\��ݼ���\2000���ݼ���ǰ.dta,replace
collapse (sum) v,by(hs6iso3)                            //����-����-��Ʒ
gen tt="2000"
destring tt,gen( t)                                     //�������
drop tt
drop in 1/2810                                          //�������
g id=substr(hs6iso3,1,3)                                //���ӹ���
g hs6=substr(hs6iso3,4,9)                               //����HS����
save E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\��ݼ���\2000���ݼ��ܺ�.dta,replace



* 2001�����ݴ���
clear
insheet using E:\��������\CEPII����\HS96\baci96_2001.csv
merge n:n i using ����ƥ��.dta ,update replace          //ƥ�����
tostring hs6 , replace  format(%06.0f)                  //��ֵ�ͱ��ַ���
gen hs6iso3=iso3+hs6
destring hs6,gen (hs1996)                               //hsҲ��5λ����
drop _merge 
save E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\��ݼ���\2001���ݼ���ǰ.dta,replace
collapse (sum) v,by(hs6iso3)                            //����-����-��Ʒ
gen tt="2001"
destring tt,gen( t)                                     //�������
drop tt
drop in 1/2645                                          //�������
g id=substr(hs6iso3,1,3)                                //���ӹ���
g hs6=substr(hs6iso3,4,9)                               //����HS����
save E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\��ݼ���\2001���ݼ��ܺ�.dta,replace



* 2002�����ݴ���
clear
insheet using E:\��������\CEPII����\HS96\baci96_2002.csv
merge n:n i using ����ƥ��.dta ,update replace          //ƥ�����
tostring hs6 , replace  format(%06.0f)                  //��ֵ�ͱ��ַ���
gen hs6iso3=iso3+hs6
destring hs6,gen (hs1996)                               //hsҲ��5λ����
drop _merge 
save E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\��ݼ���\2002���ݼ���ǰ.dta,replace
collapse (sum) v,by(hs6iso3)                            //����-����-��Ʒ
gen tt="2002"
destring tt,gen( t)                                     //�������
drop tt
drop in 1/2580                                          //�������
g id=substr(hs6iso3,1,3)                                //���ӹ���
g hs6=substr(hs6iso3,4,9)                               //����HS����
save E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\��ݼ���\2002���ݼ��ܺ�.dta,replace




* 2003�����ݴ���
clear
insheet using E:\��������\CEPII����\HS96\baci96_2003.csv
merge n:n i using ����ƥ��.dta ,update replace          //ƥ�����
tostring hs6 , replace  format(%06.0f)                  //��ֵ�ͱ��ַ���
gen hs6iso3=iso3+hs6
destring hs6,gen (hs1996)                               //hsҲ��5λ����
drop _merge 
save E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\��ݼ���\2003���ݼ���ǰ.dta,replace
collapse (sum) v,by(hs6iso3)                            //����-����-��Ʒ
gen tt="2003"
destring tt,gen( t)                                     //�������
drop tt
drop in 1/2623                                          //�������
g id=substr(hs6iso3,1,3)                                //���ӹ���
g hs6=substr(hs6iso3,4,9)                               //����HS����
save E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\��ݼ���\2003���ݼ��ܺ�.dta,replace






* 2004�����ݴ���
clear
insheet using E:\��������\CEPII����\HS96\baci96_2004.csv
merge n:n i using ����ƥ��.dta ,update replace          //ƥ�����
tostring hs6 , replace  format(%06.0f)                  //��ֵ�ͱ��ַ���
gen hs6iso3=iso3+hs6
destring hs6,gen (hs1996)                               //hsҲ��5λ����
drop _merge 
save E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\��ݼ���\2004���ݼ���ǰ.dta,replace
collapse (sum) v,by(hs6iso3)                            //����-����-��Ʒ
gen tt="2004"
destring tt,gen( t)                                     //�������
drop tt
drop in 1/2709                                          //�������
g id=substr(hs6iso3,1,3)                                //���ӹ���
g hs6=substr(hs6iso3,4,9)                               //����HS����
save E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\��ݼ���\2004���ݼ��ܺ�.dta,replace




* 2005�����ݴ���
clear
insheet using E:\��������\CEPII����\HS96\baci96_2005.csv
merge n:n i using ����ƥ��.dta ,update replace          //ƥ�����
tostring hs6 , replace  format(%06.0f)                  //��ֵ�ͱ��ַ���
gen hs6iso3=iso3+hs6
destring hs6,gen (hs1996)                               //hsҲ��5λ����
drop _merge 
save E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\��ݼ���\2005���ݼ���ǰ.dta,replace
collapse (sum) v,by(hs6iso3)                            //����-����-��Ʒ
gen tt="2005"
destring tt,gen( t)                                     //�������
drop tt
drop in 1/5918                                         //�������
g id=substr(hs6iso3,1,3)                                //���ӹ���
g hs6=substr(hs6iso3,4,9)                               //����HS����
save E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\��ݼ���\2005���ݼ��ܺ�.dta,replace





* 2006�����ݴ���
clear
insheet using E:\��������\CEPII����\HS96\baci96_2006.csv
merge n:n i using ����ƥ��.dta ,update replace          //ƥ�����
tostring hs6 , replace  format(%06.0f)                  //��ֵ�ͱ��ַ���
gen hs6iso3=iso3+hs6
destring hs6,gen (hs1996)                               //hsҲ��5λ����
drop _merge 
save E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\��ݼ���\2006���ݼ���ǰ.dta,replace
collapse (sum) v,by(hs6iso3)                            //����-����-��Ʒ
gen tt="2006"
destring tt,gen( t)                                     //�������
drop tt
drop in 1/6436                                          //�������
g id=substr(hs6iso3,1,3)                                //���ӹ���
g hs6=substr(hs6iso3,4,9)                               //����HS����
save E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\��ݼ���\2006���ݼ��ܺ�.dta,replace



* 2007�����ݴ���
clear
insheet using E:\��������\CEPII����\HS96\baci96_2007.csv
merge n:n i using ����ƥ��.dta ,update replace          //ƥ�����
tostring hs6 , replace  format(%06.0f)                  //��ֵ�ͱ��ַ���
gen hs6iso3=iso3+hs6
destring hs6,gen (hs1996)                               //hsҲ��5λ����
drop _merge 
save E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\��ݼ���\2007���ݼ���ǰ.dta,replace
collapse (sum) v,by(hs6iso3)                            //����-����-��Ʒ
gen tt="2007"
destring tt,gen( t)                                     //�������
drop tt
drop in 1/6552                                          //�������
g id=substr(hs6iso3,1,3)                                //���ӹ���
g hs6=substr(hs6iso3,4,9)                               //����HS����
save E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\��ݼ���\2007���ݼ��ܺ�.dta,replace



* 2008�����ݴ���
clear
insheet using E:\��������\CEPII����\HS96\baci96_2008.csv
merge n:n i using ����ƥ��.dta ,update replace          //ƥ�����
tostring hs6 , replace  format(%06.0f)                  //��ֵ�ͱ��ַ���
gen hs6iso3=iso3+hs6
destring hs6,gen (hs1996)                               //hsҲ��5λ����
drop _merge 
save E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\��ݼ���\2008���ݼ���ǰ.dta,replace
collapse (sum) v,by(hs6iso3)                            //����-����-��Ʒ
gen tt="2008"
destring tt,gen( t)                                     //�������
drop tt
drop in 1/5954                                          //�������
g id=substr(hs6iso3,1,3)                                //���ӹ���
g hs6=substr(hs6iso3,4,9)                               //����HS����
save E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\��ݼ���\2008���ݼ��ܺ�.dta,replace



* 2009�����ݴ���
clear
insheet using E:\��������\CEPII����\HS96\baci96_2009.csv
merge n:n i using ����ƥ��.dta ,update replace          //ƥ�����
tostring hs6 , replace  format(%06.0f)                  //��ֵ�ͱ��ַ���
gen hs6iso3=iso3+hs6
destring hs6,gen (hs1996)                               //hsҲ��5λ����
drop _merge 
save E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\��ݼ���\2009���ݼ���ǰ.dta,replace
collapse (sum) v,by(hs6iso3)                            //����-����-��Ʒ
gen tt="2009"
destring tt,gen( t)                                     //�������
drop tt
drop in 1/6319                                          //�������
g id=substr(hs6iso3,1,3)                                //���ӹ���
g hs6=substr(hs6iso3,4,9)                               //����HS����
save E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\��ݼ���\2009���ݼ��ܺ�.dta,replace

* 2010�����ݴ���
clear
insheet using E:\��������\CEPII����\HS96\baci96_2010.csv
merge n:n i using ����ƥ��.dta ,update replace          //ƥ�����
tostring hs6 , replace  format(%06.0f)                  //��ֵ�ͱ��ַ���
gen hs6iso3=iso3+hs6
destring hs6,gen (hs1996)                               //hsҲ��5λ����
drop _merge 
save E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\��ݼ���\2010���ݼ���ǰ.dta,replace
collapse (sum) v,by(hs6iso3)                            //����-����-��Ʒ
gen tt="2010"
destring tt,gen( t)                                     //�������
drop tt
drop in 1/6308                                          //�������
g id=substr(hs6iso3,1,3)                                //���ӹ���
g hs6=substr(hs6iso3,4,9)                               //����HS����
save E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\��ݼ���\2010���ݼ��ܺ�.dta,replace

* 2011�����ݴ���
clear
insheet using E:\��������\CEPII����\HS96\baci96_2011.csv
merge n:n i using ����ƥ��.dta ,update replace          //ƥ�����
tostring hs6 , replace  format(%06.0f)                  //��ֵ�ͱ��ַ���
gen hs6iso3=iso3+hs6
destring hs6,gen (hs1996)                               //hsҲ��5λ����
drop _merge 
save E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\��ݼ���\2011���ݼ���ǰ.dta,replace
collapse (sum) v,by(hs6iso3)                            //����-����-��Ʒ
gen tt="2011"
destring tt,gen( t)                                     //�������
drop tt
drop in 1/6424                                          //�������!
g id=substr(hs6iso3,1,3)                                //���ӹ���
g hs6=substr(hs6iso3,4,9)                               //����HS����
save E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\��ݼ���\2011���ݼ��ܺ�.dta,replace


























