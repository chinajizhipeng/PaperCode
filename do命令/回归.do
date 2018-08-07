 save  E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\�ع�����\�ع�����.dta,replace

 use E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\�ع�����\�ع�����.dta,clear

 * ��һ���ع飺
 
 *1.����
 xtset varname year
 * GLS�ع�
 xtreg qq dd  pp oo ii hh ee fdd ss,robust
 est store m11
 * RE�ع�
 xtreg qq dd  pp oo ii hh ee fdd ss,re robust
 * est store m12
 * GMM�ع�
 ivreg2 qq pp oo ii hh ee fdd ss  (dd = L.dd),gmm2s robust
 est store m13

 outreg2 [m11  m13] using ��һ������.xls,replace
 
 *2.���������
 xtset varname year
 * GLS�ع�
 xtreg qq dd  pp oo ii hh ee fdd ss if ins == 1,robust
 est store m111
 * RE�ع�
 * xtreg qq dd  pp oo ii hh ee fdd ss if ins == 1,re robust
 * est store m121
 * GMM�ع�
 ivreg2 qq pp oo ii hh ee fdd ss  (dd = L.dd) if ins == 1,gmm2s robust
 est store m131

 outreg2 [m111  m131] using ��һ�����������.xls,replace
 
 *3.���������
 xtset varname year
 * GLS�ع�
 xtreg qq dd  pp oo ii hh ee fdd ss if ins == 3 | ins ==4,robust
 est store m1111
 * RE�ع�
 * xtreg qq dd  pp oo ii hh ee fdd ss if ins == 3 | ins ==4,re robust
 * est store m1211
 * GMM�ع�
 ivreg2 qq pp oo ii hh ee fdd ss  (dd = L.dd) if ins == 3 | ins ==4,gmm2s robust
 est store m1311

 outreg2 [m1111  m1311] using ��һ�е�����.xls,replace
 
  *4.���������
 xtset varname year
 * GLS�ع�
 xtreg qq dd  pp oo ii hh ee fdd ss if  ins== 2 ,robust
 est store m11111
 * RE�ع�
 * xtreg qq dd  pp oo ii hh ee fdd ss if ins == 2,re robust
 * est store m12111
 * GMM�ع�
 ivreg2 qq pp oo ii hh ee fdd ss  (dd = L.dd) if ins == 2,gmm2s robust
 est store m13111

 outreg2 [m11111  m13111] using ��һ���������.xls,replace
 
 outreg2 [m11  m13 m111  m131 m1111  m1311 m11111  m13111] using ��һ��ع�.xls,replace

  
  
  
  
  * �ڶ����ع�
  
  *1.�߼����ع�
 * GLS�ع�
 xtreg qq dd  pp oo ii hh ee fdd ss if isictype == 1,robust
 est store m21
 * RE�ع�
 * xtreg qq dd  pp oo ii hh ee fdd ss if isictype == 1,re robust
 * est store m21
 * GMM�ع�
 ivreg2 qq pp oo ii hh ee fdd ss  (dd = L.dd) if isictype == 1,gmm2s robust
 est store m22

 outreg2 [m21  m22] using �߼����ع�.xls,replace
 
   *2.�м����ع�
 * GLS�ع�
 xtreg qq dd  pp oo ii hh ee fdd ss if isictype == 2,robust
 est store m211
 * RE�ع�
 * xtreg qq dd  pp oo ii hh ee fdd ss isictype == 2,re robust
 * est store m2111
 * GMM�ع�
 ivreg2 qq pp oo ii hh ee fdd ss  (dd = L.dd) if isictype == 2,gmm2s robust
 est store m221

 outreg2 [m211  m221] using �м����ع�.xls,replace
 
 
 *3.�ͼ����ع�
 * GLS�ع�
 xtreg qq dd  pp oo ii hh ee fdd ss if isictype == 3,robust
 est store m2111
 * RE�ع�
 * xtreg qq dd  pp oo ii hh ee fdd ss isictype == 3,re robust
 * est store m21111
 * GMM�ع�
 ivreg2 qq pp oo ii hh ee fdd ss  (dd = L.dd) if isictype == 3,gmm2s robust
 est store m2211

 outreg2 [m2111  m2211] using �ͼ����ع�.xls,replace
 
 