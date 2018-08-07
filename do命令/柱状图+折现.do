sysuse sp500, clear
gen month=month(date)
collapse  high low volume close, by(month)
gen month1=month-0.2
gen month2=month+0.2

twoway  (bar high month1,barw(0.4)) (scatter volume month,msymbol(S) connect(l) yaxis(2)) (bar low month2, barw(0.4)), xlabel(1(1)12)
