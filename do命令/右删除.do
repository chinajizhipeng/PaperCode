use E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\回归数据\回归数据.dta,clear

xtset varname year
gen year1=L1.year   
drop if year == 2011 & year1 == .  // 删除2011年出口

gen year2=L1.year1
drop if year == 2011 & year1 == 2010 & year2 == .  //删除 2010-2011出口

gen year3=L1.year2  
drop if year == 2011 & year1 == 2010 & year2 == 2009 & year3 == .  //删除 2009-2011出口

gen year4=L1.year3
drop if year == 2011 & year1 == 2010 & year2 == 2009 & year3 == 2008 & year4 == . //删除 2008-2011出口

gen year5=L1.year4
drop if year == 2011 & year1 == 2010 & year2 == 2009 & year3 == 2008 & year4 == 2007 & year5 == . //删除 2007-2011出口

gen year6=L1.year5
drop if year == 2011 & year1 == 2010 & year2 == 2009 & year3 == 2008 & year4 == 2007 & year5 == 2006 & year6 == . //删除 2006-2011出口

gen year7=L1.year6
drop if year == 2011 & year1 == 2010 & year2 == 2009 & year3 == 2008 & year4 == 2007 & year5 == 2006 & year6 == 2005 & year7 == . //删除 2005-2011出口

gen year8=L1.year7
drop if year == 2011 & year1 == 2010 & year2 == 2009 & year3 == 2008 & year4 == 2007 & year5 == 2006 & year6 == 2005 & year7 == 2004 & year8 == . //删除 2004-2011出口

gen year9=L1.year8
drop if year == 2011 & year1 == 2010 & year2 == 2009 & year3 == 2008 & year4 == 2007 & year5 == 2006 & year6 == 2005 & year7 == 2004 & year8 == 2003 & year9 == . //删除 2003-2011出口

gen year10=L1.year9
drop if year == 2011 & year1 == 2010 & year2 == 2009 & year3 == 2008 & year4 == 2007 & year5 == 2006 & year6 == 2005 & year7 == 2004 & year8 == 2003 & year9 == 2002 & year10 == . //删除 2002-2011出口

gen year11=L1.year10
drop if year == 2011 & year1 == 2010 & year2 == 2009 & year3 == 2008 & year4 == 2007 & year5 == 2006 & year6 == 2005 & year7 == 2004 & year8 == 2003 & year9 == 2002 & year10 == 2001 & year11 == . //删除 2001-2011出口

gen year12=L1.year11
drop if year == 2011 & year1 == 2010 & year2 == 2009 & year3 == 2008 & year4 == 2007 & year5 == 2006 & year6 == 2005 & year7 == 2004 & year8 == 2003 & year9 == 2002 & year10 == 2001 & year11 == 2000 & year12 == . //删除 2000-2011出口

gen year13=L1.year12
drop if year == 2011 & year1 == 2010 & year2 == 2009 & year3 == 2008 & year4 == 2007 & year5 == 2006 & year6 == 2005 & year7 == 2004 & year8 == 2003 & year9 == 2002 & year10 == 2001 & year11 == 2000 & year12 == 1999 & year13 == . //删除 2000-2011出口
