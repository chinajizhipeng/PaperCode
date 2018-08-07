use E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\回归数据\回归原始数据有行业和国家分组.dta,clear
 tostring year,gen (tt)
 gen imyear=importer+tt
 
 *匹配GDP
 use E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\GDP\42GDP.dta,clear 
  tostring year,gen (tt)
gen imyear=importer+tt
save  E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\GDP\42GDP.dta,replace

 merge n:n imyear using E:\论文学习\写的论文\出口持续时间与技术复杂度\数据\GDP\42GDP.dta
 