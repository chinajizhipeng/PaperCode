use E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\回归数据\右删除回归数据.dta,clear
xtset varname year

ivreg2 qq pp oo ii hh ee fdd ss  (dd = L.dd) ,gmm2s robust //总体
est store m1

ivreg2 qq pp oo ii hh ee fdd ss  (dd = L.dd) if ins == 1,gmm2s robust //高收入国家
est store m2
  
ivreg2 qq pp oo ii hh ee fdd ss  (dd = L.dd) if ins == 3 | ins ==4,gmm2s robust //中等收入国家
est store m3
 
ivreg2 qq pp oo ii hh ee fdd ss  (dd = L.dd) if ins == 2,gmm2s robust //低收入国家
est store m4
 
ivreg2 qq pp oo ii hh ee fdd ss  (dd = L.dd) if isictype == 1,gmm2s robust //高技术
est store m5
 
ivreg2 qq pp oo ii hh ee fdd ss  (dd = L.dd) if isictype == 2,gmm2s robust //中技术
est store m6

ivreg2 qq pp oo ii hh ee fdd ss  (dd = L.dd) if isictype == 3,gmm2s robust //低技术
est store m7

 outreg2 [m1 m2 m3 m4 m5 m6 m7 ] using 稳健性检验.xls,replace
