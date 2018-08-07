*局域暂元local   全局暂元global

*循环回归
global yx "wage hours collgrad tenure"
forvalues i = 1/4 {
  dis _n(2) in yellow "occupation == " in green `i'
  reg $yx if occupation == `i'
  est store m`i'
}
esttab m1 m2 m3 m4 

*foreach 语句：变量、暂元、文件的循环
*-多个文件的导入和合并
global vlist "id year vest market stock"  //输入变量
foreach file in  1 2 3{  //文件1 2 3
insheet $vlist using `file'.txt,clear
save `file'.dta ,replace
}
*追加样本
using 1.dta,clear
foreach file in 2 3{
append using `file'.dta
}
*

*变量名循环：foreach v of varlist....
sysuse nlsw88,clear
local vars "wage hours collgrad tenure"
foreach v of varlist `vars'{
winsor `v' ,gen (`v'_w) p(0.01)
}
*


