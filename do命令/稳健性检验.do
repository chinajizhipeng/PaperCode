use E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\�ع�����\��ɾ���ع�����.dta,clear
xtset varname year

ivreg2 qq pp oo ii hh ee fdd ss  (dd = L.dd) ,gmm2s robust //����
est store m1

ivreg2 qq pp oo ii hh ee fdd ss  (dd = L.dd) if ins == 1,gmm2s robust //���������
est store m2
  
ivreg2 qq pp oo ii hh ee fdd ss  (dd = L.dd) if ins == 3 | ins ==4,gmm2s robust //�е��������
est store m3
 
ivreg2 qq pp oo ii hh ee fdd ss  (dd = L.dd) if ins == 2,gmm2s robust //���������
est store m4
 
ivreg2 qq pp oo ii hh ee fdd ss  (dd = L.dd) if isictype == 1,gmm2s robust //�߼���
est store m5
 
ivreg2 qq pp oo ii hh ee fdd ss  (dd = L.dd) if isictype == 2,gmm2s robust //�м���
est store m6

ivreg2 qq pp oo ii hh ee fdd ss  (dd = L.dd) if isictype == 3,gmm2s robust //�ͼ���
est store m7

 outreg2 [m1 m2 m3 m4 m5 m6 m7 ] using �Ƚ��Լ���.xls,replace
