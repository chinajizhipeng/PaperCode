***广西数据处理
*进出口
use "E:\论文学习\论文代码\孙子婷案例作业\guangxi_ex_im.dta",clear
keep if ex_im == "进出口"
reshape wide value,i(iso) j(year)
export excel iso value2006 value2007 value2008 value2009 value2010 value2011 value2012 value2013 value2014 ///
value2015 value2016 using "E:\论文学习\论文代码\孙子婷案例作业\进出口.xls", firstrow(variables) ///
*进口
use "E:\论文学习\论文代码\孙子婷案例作业\guangxi_ex_im.dta",clear
keep if ex_im == "进口"
reshape wide value,i(iso) j(year)
export excel iso value2006 value2007 value2008 value2009 value2010 value2011 value2012 value2013 value2014 ///
value2015 value2016 using "E:\论文学习\论文代码\孙子婷案例作业\进口.xls", firstrow(variables)
*出口
use "E:\论文学习\论文代码\孙子婷案例作业\guangxi_ex_im.dta",clear
keep if ex_im == "出口"
reshape wide value,i(iso) j(year)
export excel iso value2006 value2007 value2008 value2009 value2010 value2011 value2012 value2013 value2014 ///
value2015 value2016 using "E:\论文学习\论文代码\孙子婷案例作业\出口.xls", firstrow(variables)
*欧洲出口
use "E:\论文学习\论文代码\孙子婷案例作业\guangxi_ex_im.dta",clear
keep if iso == "欧洲" & ex_im == "出口"
export excel iso year value using "E:\论文学习\论文代码\孙子婷案例作业\广西欧洲出口.xls", firstrow(variables)

