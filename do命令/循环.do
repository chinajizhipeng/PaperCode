*������Ԫlocal   ȫ����Ԫglobal

*ѭ���ع�
global yx "wage hours collgrad tenure"
forvalues i = 1/4 {
  dis _n(2) in yellow "occupation == " in green `i'
  reg $yx if occupation == `i'
  est store m`i'
}
esttab m1 m2 m3 m4 

*foreach ��䣺��������Ԫ���ļ���ѭ��
*-����ļ��ĵ���ͺϲ�
global vlist "id year vest market stock"  //�������
foreach file in  1 2 3{  //�ļ�1 2 3
insheet $vlist using `file'.txt,clear
save `file'.dta ,replace
}
*׷������
using 1.dta,clear
foreach file in 2 3{
append using `file'.dta
}
*

*������ѭ����foreach v of varlist....
sysuse nlsw88,clear
local vars "wage hours collgrad tenure"
foreach v of varlist `vars'{
winsor `v' ,gen (`v'_w) p(0.01)
}
*


