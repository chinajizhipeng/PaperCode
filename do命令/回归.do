 save  E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\回归数据\回归数据.dta,replace

 use E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\回归数据\回归数据.dta,clear

 * 第一个回归：
 
 *1.总体
 xtset varname year
 * GLS回归
 xtreg qq dd  pp oo ii hh ee fdd ss,robust
 est store m11
 * RE回归
 xtreg qq dd  pp oo ii hh ee fdd ss,re robust
 * est store m12
 * GMM回归
 ivreg2 qq pp oo ii hh ee fdd ss  (dd = L.dd),gmm2s robust
 est store m13

 outreg2 [m11  m13] using 第一个总体.xls,replace
 
 *2.高收入国家
 xtset varname year
 * GLS回归
 xtreg qq dd  pp oo ii hh ee fdd ss if ins == 1,robust
 est store m111
 * RE回归
 * xtreg qq dd  pp oo ii hh ee fdd ss if ins == 1,re robust
 * est store m121
 * GMM回归
 ivreg2 qq pp oo ii hh ee fdd ss  (dd = L.dd) if ins == 1,gmm2s robust
 est store m131

 outreg2 [m111  m131] using 第一个高收入国家.xls,replace
 
 *3.中收入国家
 xtset varname year
 * GLS回归
 xtreg qq dd  pp oo ii hh ee fdd ss if ins == 3 | ins ==4,robust
 est store m1111
 * RE回归
 * xtreg qq dd  pp oo ii hh ee fdd ss if ins == 3 | ins ==4,re robust
 * est store m1211
 * GMM回归
 ivreg2 qq pp oo ii hh ee fdd ss  (dd = L.dd) if ins == 3 | ins ==4,gmm2s robust
 est store m1311

 outreg2 [m1111  m1311] using 第一中等收入.xls,replace
 
  *4.低收入国家
 xtset varname year
 * GLS回归
 xtreg qq dd  pp oo ii hh ee fdd ss if  ins== 2 ,robust
 est store m11111
 * RE回归
 * xtreg qq dd  pp oo ii hh ee fdd ss if ins == 2,re robust
 * est store m12111
 * GMM回归
 ivreg2 qq pp oo ii hh ee fdd ss  (dd = L.dd) if ins == 2,gmm2s robust
 est store m13111

 outreg2 [m11111  m13111] using 第一低收入国家.xls,replace
 
 outreg2 [m11  m13 m111  m131 m1111  m1311 m11111  m13111] using 第一组回归.xls,replace

  
  
  
  
  * 第二个回归
  
  *1.高技术回归
 * GLS回归
 xtreg qq dd  pp oo ii hh ee fdd ss if isictype == 1,robust
 est store m21
 * RE回归
 * xtreg qq dd  pp oo ii hh ee fdd ss if isictype == 1,re robust
 * est store m21
 * GMM回归
 ivreg2 qq pp oo ii hh ee fdd ss  (dd = L.dd) if isictype == 1,gmm2s robust
 est store m22

 outreg2 [m21  m22] using 高技术回归.xls,replace
 
   *2.中技术回归
 * GLS回归
 xtreg qq dd  pp oo ii hh ee fdd ss if isictype == 2,robust
 est store m211
 * RE回归
 * xtreg qq dd  pp oo ii hh ee fdd ss isictype == 2,re robust
 * est store m2111
 * GMM回归
 ivreg2 qq pp oo ii hh ee fdd ss  (dd = L.dd) if isictype == 2,gmm2s robust
 est store m221

 outreg2 [m211  m221] using 中技术回归.xls,replace
 
 
 *3.低技术回归
 * GLS回归
 xtreg qq dd  pp oo ii hh ee fdd ss if isictype == 3,robust
 est store m2111
 * RE回归
 * xtreg qq dd  pp oo ii hh ee fdd ss isictype == 3,re robust
 * est store m21111
 * GMM回归
 ivreg2 qq pp oo ii hh ee fdd ss  (dd = L.dd) if isictype == 3,gmm2s robust
 est store m2211

 outreg2 [m2111  m2211] using 低技术回归.xls,replace
 
 