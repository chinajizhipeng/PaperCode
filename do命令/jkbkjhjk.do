xtset varname year
gen pp = ln(price) 
gen  dd= ln(duration +1 ) 
gen  qq= ln(qPRODY_NEW ) 
gen  oo= ln(open+1 ) 
gen  ii= ln(insititution ) 
gen  ff= ln( 1+infra ) 
gen  hh= ln( hum)
gen ee =ln(export)
gen ss=ln(scale)
gen yf=ln(1+yanfa)
gen fdd=ln(fid)
gen gg=ln(gdp)
xtreg qq dd oo ii  pp ss hh fdd ee  


collapse (sum) export,by(year isic2)        
	   
rename export scale 

tostring year ,gen(asd1)      
tostring isic2,gen(asd2)
gen iisi=asd1+"s"+asd2


