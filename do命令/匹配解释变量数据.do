use E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\�ع�����\�ع�ԭʼ��������ҵ�͹��ҷ���.dta,clear
 tostring year,gen (tt)
 gen imyear=importer+tt
 
 *ƥ��GDP
 use E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\GDP\42GDP.dta,clear 
  tostring year,gen (tt)
gen imyear=importer+tt
save  E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\GDP\42GDP.dta,replace

 merge n:n imyear using E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\GDP\42GDP.dta
 