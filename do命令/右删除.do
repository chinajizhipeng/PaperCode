use E:\����ѧϰ\д������\���ڳ���ʱ���뼼�����Ӷ�\����\�ع�����\�ع�����.dta,clear

xtset varname year
gen year1=L1.year   
drop if year == 2011 & year1 == .  // ɾ��2011�����

gen year2=L1.year1
drop if year == 2011 & year1 == 2010 & year2 == .  //ɾ�� 2010-2011����

gen year3=L1.year2  
drop if year == 2011 & year1 == 2010 & year2 == 2009 & year3 == .  //ɾ�� 2009-2011����

gen year4=L1.year3
drop if year == 2011 & year1 == 2010 & year2 == 2009 & year3 == 2008 & year4 == . //ɾ�� 2008-2011����

gen year5=L1.year4
drop if year == 2011 & year1 == 2010 & year2 == 2009 & year3 == 2008 & year4 == 2007 & year5 == . //ɾ�� 2007-2011����

gen year6=L1.year5
drop if year == 2011 & year1 == 2010 & year2 == 2009 & year3 == 2008 & year4 == 2007 & year5 == 2006 & year6 == . //ɾ�� 2006-2011����

gen year7=L1.year6
drop if year == 2011 & year1 == 2010 & year2 == 2009 & year3 == 2008 & year4 == 2007 & year5 == 2006 & year6 == 2005 & year7 == . //ɾ�� 2005-2011����

gen year8=L1.year7
drop if year == 2011 & year1 == 2010 & year2 == 2009 & year3 == 2008 & year4 == 2007 & year5 == 2006 & year6 == 2005 & year7 == 2004 & year8 == . //ɾ�� 2004-2011����

gen year9=L1.year8
drop if year == 2011 & year1 == 2010 & year2 == 2009 & year3 == 2008 & year4 == 2007 & year5 == 2006 & year6 == 2005 & year7 == 2004 & year8 == 2003 & year9 == . //ɾ�� 2003-2011����

gen year10=L1.year9
drop if year == 2011 & year1 == 2010 & year2 == 2009 & year3 == 2008 & year4 == 2007 & year5 == 2006 & year6 == 2005 & year7 == 2004 & year8 == 2003 & year9 == 2002 & year10 == . //ɾ�� 2002-2011����

gen year11=L1.year10
drop if year == 2011 & year1 == 2010 & year2 == 2009 & year3 == 2008 & year4 == 2007 & year5 == 2006 & year6 == 2005 & year7 == 2004 & year8 == 2003 & year9 == 2002 & year10 == 2001 & year11 == . //ɾ�� 2001-2011����

gen year12=L1.year11
drop if year == 2011 & year1 == 2010 & year2 == 2009 & year3 == 2008 & year4 == 2007 & year5 == 2006 & year6 == 2005 & year7 == 2004 & year8 == 2003 & year9 == 2002 & year10 == 2001 & year11 == 2000 & year12 == . //ɾ�� 2000-2011����

gen year13=L1.year12
drop if year == 2011 & year1 == 2010 & year2 == 2009 & year3 == 2008 & year4 == 2007 & year5 == 2006 & year6 == 2005 & year7 == 2004 & year8 == 2003 & year9 == 2002 & year10 == 2001 & year11 == 2000 & year12 == 1999 & year13 == . //ɾ�� 2000-2011����
