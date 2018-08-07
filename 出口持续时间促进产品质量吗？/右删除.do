
gen year1=L1.year   
drop if year == 2014 & year1 == .  // 删除2014年出口

gen year2=L1.year1
drop if year == 2014 & year1 == 2013 & year2 == .  //删除 2013-2014出口

gen year3=L1.year2  
drop if year == 2014 & year1 == 2013 & year2 == 2012 & year3 == .  //删除 2012-2014出口

gen year4=L1.year3
drop if year == 2014 & year1 == 2013 & year2 == 2012 & year3 == 2011 & year4 == . //删除 2011-2014出口

gen year5=L1.year4
drop if year == 2014 & year1 == 2013 & year2 == 2012 & year3 == 2011 & year4 == 2010 & year5 == . //删除 2010-2014出口

gen year6=L1.year5
drop if year == 2014 & year1 == 2013 & year2 == 2012 & year3 == 2011 & year4 == 2010 & year5 == 2009 & year6 == . //删除 2009-2014出口

gen year7=L1.year6
drop if year == 2014 & year1 == 2013 & year2 == 2012 & year3 == 2011 & year4 == 2010 & year5 == 2009 & year6 == 2008 & year7 == . //删除 2008-2014出口

gen year8=L1.year7
drop if year == 2014 & year1 == 2013 & year2 == 2012 & year3 == 2011 & year4 == 2010 & year5 == 2009 & year6 == 2008 & year7 == 2007 & year8 == . //删除 2007-2014出口

gen year9=L1.year8
drop if year == 2014 & year1 == 2013 & year2 == 2012 & year3 == 2011 & year4 == 2010 & year5 == 2009 & year6 == 2008 & year7 == 2007 & year8 == 2006 & year9 == . //删除 2006-2014出口

gen year10=L1.year9
drop if year == 2014 & year1 == 2013 & year2 == 2012 & year3 == 2011 & year4 == 2010 & year5 == 2009 & year6 == 2008 & year7 == 2007 & year8 == 2006 & year9 == 2005 & year10 == . //删除 2005-2014出口

gen year11=L1.year10
drop if year == 2014 & year1 == 2013 & year2 == 2012 & year3 == 2011 & year4 == 2010 & year5 == 2009 & year6 == 2008 & year7 == 2007 & year8 == 2006 & year9 == 2005 & year10 == 2004 & year11 == . //删除 2004-2014出口

gen year12=L1.year11
drop if year == 2014 & year1 == 2013 & year2 == 2012 & year3 == 2011 & year4 == 2010 & year5 == 2009 & year6 == 2008 & year7 == 2007 & year8 == 2006 & year9 == 2005 & year10 == 2004 & year11 == 2003 & year12 == . //删除 2003-2014出口

gen year13=L1.year12
drop if year == 2014 & year1 == 2013 & year2 == 2012 & year3 == 2011 & year4 == 2010 & year5 == 2009 & year6 == 2008 & year7 == 2007 & year8 == 2006 & year9 == 2005 & year10 == 2004 & year11 == 2003 & year12 == 2002 & year13 == . //删除 2002-2014出口

gen year14=L1.year13
drop if year == 2014 & year1 == 2013 & year2 == 2012 & year3 == 2011 & year4 == 2010 & year5 == 2009 & year6 == 2008 & year7 == 2007 & year8 == 2006 & year9 == 2005 & year10 == 2004 & year11 == 2003 & year12 == 2002 & year13 == 2001 //删除 2001-2014出口
